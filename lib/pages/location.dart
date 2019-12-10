import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EventLocation extends StatefulWidget {
  @override
  _EventLocation createState() => _EventLocation();
}

class _EventLocation extends State<EventLocation> {
  /*_onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }*/

  /*_onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: _lastMapPosition,
          infoWindow: InfoWindow(
              title: "This is a title", snippet: "This is a snippet"),icon: BitmapDescriptor.defaultMarker));
    });
  }

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
        onPressed: function,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: Colors.orange,
        child: Icon(icon,size:36.0));
  }*/
  Completer<GoogleMapController> _controller = Completer();
  static LatLng _center = const LatLng(36.2809899, 6.5912088);
  LatLng _lastMapPosition = _center;
  static final CameraPosition _mylocation =
      CameraPosition(target: _center, zoom: 15.0);
  MapType _maptype = MapType.hybrid;
  final List<Marker> _marker = [];
  
  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  _onMapTypeButtonPressed() {
    setState(() {
      _maptype = _maptype == MapType.hybrid ? MapType.normal : MapType.hybrid;
    });
  }
   
  

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
        onPressed: function,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: Colors.blue,
        child: Icon(icon, size: 36.0));
  }

  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GoogleMap(
        initialCameraPosition: _mylocation,
        mapType: _maptype,
        onMapCreated: _onMapCreated,
        onCameraMove: _onCameraMove,
        zoomGesturesEnabled: true,
      ),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
              children: <Widget>[
                button(_onMapTypeButtonPressed, Icons.map),
                SizedBox(
                  height: 16.0,
                ),
              
              ],
            ),
          ))
    ]);
  }
}
