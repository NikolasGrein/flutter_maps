import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLUTTER COM MAPS'),
        centerTitle: true,
        backgroundColor:  Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
              options: MapOptions(center : LatLng(37.7749, -122.4194), zoom: 3), //San Francisco, CA
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{y}/{x}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -122.4194),
                    builder: (ctx) => Container(
                    child: Icon(Icons.location_on, color: Colors.red),
                    ),
                 ),

            ],
          ),

        ],
      ),
      ],
      ),
    );
  }
}
