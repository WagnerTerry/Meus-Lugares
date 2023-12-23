import 'package:flutter/material.dart';
import 'package:meus_lugares/models/place.dart';
import 'package:meus_lugares/screens/map_screen.dart';

class PlaceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)!.settings.arguments as Place;
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.file(
              place.image,
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 10),
          Text(
            // place.location!.address!,
            "Endereço maneiro",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 10),
          TextButton.icon(
            icon: const Icon(Icons.map),
            label: const Text('Ver no mapa'),
            onPressed: () {},
            // onPressed: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //     fullscreenDialog: true,
            //     builder: (context) => MapScreen(
            //       isReadOnly: true,
            //       // initialLocation: place.location!,
            //     ),
            //   ));
            // },
          )
        ],
      ),
    );
  }
}
