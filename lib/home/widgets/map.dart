import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController; //controller for Google map
  Set<Marker> markers = {}; //markers for google map
  LatLng showLocation = const LatLng(50.270908, 19.039993);
  double defaultZoom = 18.0;

  @override
  void initState() {
    markers.add(Marker( //add marker on google map
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: const InfoWindow( //popup info
        title: 'My Custom Title ',
        snippet: 'My Custom Subtitle',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      compassEnabled: true,
      zoomControlsEnabled: false,
      zoomGesturesEnabled: true, //enable Zoom in, out on map
      initialCameraPosition: CameraPosition( //initial position in map
        target: showLocation, //initial position
        zoom: defaultZoom, //initial zoom level
      ),
      markers: markers, //markers to show on map
      mapType: MapType.hybrid, //map type
      onMapCreated: (controller) { //method called when map is created
        setState(() {
          mapController = controller;
        });
      },
    );
  }
}
