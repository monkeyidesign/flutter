import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      debugShowCheckedModeBanner: false,
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {

  GoogleMapController _controller;
  List<Marker> getMarkers = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('My netImage Boss'),
          centerTitle: true,
        ),
      body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(11.5989745, 104.9075573), zoom: 16.0),
                markers: Set.from(getMarkers),
                onMapCreated: mapStateController,
              ),
            )
          ]
      )
    );
  }
  void mapStateController(controller) {
    setState(() {
      _controller = controller;
    });
  }

}
