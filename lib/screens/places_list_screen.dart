import 'package:flutter/material.dart';
import 'package:meus_lugares/utils/app_routes.dart';

class PlaceListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Lugares'),
        actions: <Widget>[
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM),
              icon: const Icon(Icons.add))
        ],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
