import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class mapData extends StatefulWidget {
  @override
  _mapDataState createState() => _mapDataState();
}

class _mapDataState extends State<mapData> {
  MapType Mtype;
  final CameraPosition _initialCameraPosition =
      CameraPosition(target: LatLng(18.670534, 73.800077));
  GoogleMapController _controller;
  Set<Marker> markers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Mtype = MapType.normal;
    markers = Set.from([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            markers: markers,
            initialCameraPosition: _initialCameraPosition,
            mapType: Mtype,
            onMapCreated: (Controller) {
              setState(() {
                _controller = Controller;
              });
            },
            onTap: (cordinate) {
              _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
              Marker mk1 = Marker(
                markerId: MarkerId('1'),
                position: cordinate,
              );
              setState(() {
                markers.add(mk1);
              });
            },
          ),
          Positioned(
            top: 40,
            right: 15,
            left: 15,
            child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),  
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left:15,top:15),
                                    suffixIcon: IconButton(
                                    icon: Icon(Icons.search), onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
            ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            maxChildSize: 0.8,
            minChildSize: 0.1,
            builder: (context, scrollController) {
              return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              colors: [
                                                Colors.blue[600],
                                                Colors.blue[500],
                                                Colors.blue[400],
                                                Colors.blue[300]
                                              ]),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Container(
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 20),
                              Container(
                                
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "More Information",
                                      style: TextStyle(
                                        color: Colors.white,
                                        
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.gps_fixed,
                                          color: Colors.white,
                                          ),
                                          SizedBox(width: 10,),
                                          Text(" Selected location",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.add_alert,
                                          color: Colors.red,
                                          ),
                                          
                                          Text("Alert Message"),
                                        ],
                                      ),
                                      SizedBox(height:10),
                                      Text("Moderate air quality index in this location. Alert message will be displayed based on the AQI index range at a particular location"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Air Quality Index",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),
                            SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Particulate Matter",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),
                            SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Presence of Ozone",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),
                            SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Presence of CO",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),
                            SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Emission of CO-2",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),
                            SizedBox(height: 20),
                                 Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            offset: Offset(0, 8))
                                      ]
                                    ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                         Text("Emission of Other Gases",
                                         style: TextStyle(
                                           fontSize: 18
                                         )
                                         ,),
                                         Text("_ _"),
                                         Icon(Icons.arrow_forward_ios,
                                         color: Colors.black54,)
                                      ],
                                    ),

                                  ),

                                ),
                            ),                           
                             
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
            },
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.my_location),
              label: "My Location",
              onTap: () {
                _controller.animateCamera(CameraUpdate.zoomTo(10));
              }),
          SpeedDialChild(
              child: Icon(Icons.map),
              label: "Mode",
              onTap: () {
                setState(() {
                  Mtype =
                      Mtype == MapType.normal ? MapType.hybrid : MapType.normal;
                });
              }),
        ],
      ),
    );
  }
}
