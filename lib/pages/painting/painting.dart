import 'package:flutter/material.dart';
import 'package:painting_app/painters/page_painter.dart';
import 'package:painting_app/providers/painting_provider.dart';
import 'package:painting_app/util/app_colors.dart';
import 'package:provider/provider.dart';

class PaintingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PaintingProvider>(builder: (_, paintingProvider, __) {
        return Row(
          children: [
            Container(
              width: 40.0,
              color: Colors.blueGrey.withOpacity(0.4),
              child: ListView.builder(
                itemCount: AppColors.defaultColors.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => paintingProvider
                        .changeCurrentColor(AppColors.defaultColors[index]),
                    child: Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.defaultColors[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: GestureDetector(
                //Adding a new offset to the list in every gesture interaction with
                //the page, to make the delay imperceptible
                onTapUp: (TapUpDetails details) {
                  paintingProvider.addOffset(details.localPosition);
                },
                onHorizontalDragStart: (details) {
                  paintingProvider.addOffset(details.localPosition);
                },
                onVerticalDragStart: (details) {
                  paintingProvider.addOffset(details.localPosition);
                },
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  paintingProvider.addOffset(details.localPosition);
                },
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  paintingProvider.addOffset(details.localPosition);
                },
                child: CustomPaint(
                  painter: PagePainter(
                    points: paintingProvider.points,
                    color: paintingProvider.currentColor,
                  ),
                  child: Container(),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
