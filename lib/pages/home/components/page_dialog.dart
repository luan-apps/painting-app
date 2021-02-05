import 'package:flutter/material.dart';
import 'package:painting_app/components/input_field.dart';
import 'package:painting_app/util/app_colors.dart';

class PageDialog extends StatelessWidget {
  final FocusNode titleNode;
  final FocusNode xAxisNode;
  final FocusNode yAxisNode;
  final Function(String) changeTitle;
  final Function(String) changeXAxis;
  final Function(String) changeYAxis;

  const PageDialog({
    @required this.titleNode,
    @required this.xAxisNode,
    @required this.yAxisNode,
    @required this.changeTitle,
    @required this.changeXAxis,
    @required this.changeYAxis,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Project information',
              style: TextStyle(
                color: AppColors.deepBlue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            InputField(
              node: titleNode,
              labelText: 'Title',
              onEditingComplete: xAxisNode.requestFocus,
              onChanged: changeTitle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
              child: Text(
                'Page resolution',
                style: TextStyle(
                  fontSize: 20.0,
                  color: AppColors.deepPurple,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 3,
                  child: InputField(
                    node: xAxisNode,
                    labelText: 'Horizontal',
                    onEditingComplete: yAxisNode.requestFocus,
                    onChanged: changeXAxis,
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: InputField(
                    node: yAxisNode,
                    labelText: 'Vertical',
                    onEditingComplete: yAxisNode.unfocus,
                    onChanged: changeYAxis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
