import 'package:flutter/material.dart';
import 'package:painting_app/components/input_field.dart';
import 'package:painting_app/pages/home/components/page_dialog.dart';
import 'package:painting_app/util/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _titleNode = FocusNode();
  final _xAxisNode = FocusNode();
  final _yAxisNode = FocusNode();

  @override
  void dispose() {
    _titleNode.dispose();
    _xAxisNode.dispose();
    _yAxisNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Painting App'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return PageDialog(
                titleNode: _titleNode,
                xAxisNode: _xAxisNode,
                yAxisNode: _yAxisNode,
                //changeTitle: changeTitle,
                //changeXAxis: changeXAxis,
                //changeYAxis: changeYAxis,
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
