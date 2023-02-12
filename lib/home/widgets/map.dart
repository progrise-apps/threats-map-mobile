import 'package:flutter_test/flutter_test.dart';
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

void main() {
  testWidgets('MapScreen has correct initial state', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MapScreen(),
    ));

    expect(find.byType(GoogleMap), findsOneWidget);

    expect(find.byType(_MapScreenState), findsOneWidget);
    final _MapScreenState state = tester.state(find.byType(_MapScreenState));

    expect(state.mapController, isNull);
    expect(state.markers, hasLength(1));
    expect(state.showLocation, const LatLng(50.270908, 19.039993));
    expect(state.defaultZoom, 18.0);
  });

  testWidgets('GoogleMap displays correct initial camera position', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MapScreen(),
    ));

    final GoogleMap map = tester.widget(find.byType(GoogleMap));

    expect(map.initialCameraPosition.target, const LatLng(50.270908, 19.039993));
    expect(map.initialCameraPosition.zoom, 18.0);
  });

  testWidgets('GoogleMap displays correct markers', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MapScreen(),
    ));

    final GoogleMap map = tester.widget(find.byType(GoogleMap));

    expect(map.markers, hasLength(1));
    final Marker marker = map.markers.first;
    expect(marker.markerId.value, 'LatLng(50.270908, 19.039993)');
    expect(marker.position, const LatLng(50.270908, 19.039993));
    expect(marker.infoWindow.title, 'My Custom Title ');
    expect(marker.infoWindow.snippet, 'My Custom Subtitle');
    expect(marker.icon, BitmapDescriptor.defaultMarker);
  });
}
