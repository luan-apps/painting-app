import 'package:flutter/material.dart';
import 'package:painting_app/util/app_colors.dart';

class HomePage extends StatelessWidget {
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
              <Widget>[

              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add), 
      ),
    );
  }
}
