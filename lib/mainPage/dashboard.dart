import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {

    var date=DateTime.now();
    String day=DateFormat('EEEE').format(date);
    String dateInfo=DateFormat('d MMM - yy').format(date);
    

    return Scaffold(

      //slide screen to open app drawer
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text("THis drawer will contain settings like select country and about us.."),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu,
                  color: Colors.black45,
                  size: 30,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        //the country will be selected from the setteing menu from app drawer
                        Text("INDIA"),
                        SizedBox(width: 5),
                        Icon(Icons.ac_unit,
                        color: Colors.black45,
                        size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(day+',',
                          style: TextStyle(color: Colors.black54, fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(dateInfo,
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // location to be obtained from geolocation library (currently error in androidX compatibility) 
                  Center(
                    child: Text("Pune Maharashtra",
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: Image(image: AssetImage('assets/images/temp.jpg'
                                    )),
                                  ),
                                ),
                                //previous and next date will betaken fromthe date func()
                                //temperature through api
                                SizedBox(height: 10),
                                Text("Friday",
                                 style: TextStyle(
                                   color: Colors.black54,
                                   fontSize: 18
                                 ),
                                ),
                                SizedBox(height: 10),
                                Text("31^",
                                 style: TextStyle(
                                   color: Colors.black54
                                 ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: Image(image: AssetImage('assets/images/temp.jpg'
                                    )),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(day,
                                 style: TextStyle(
                                   color: Colors.black87,
                                   fontSize: 25
                                 ),
                                ),
                                SizedBox(height: 10),
                                Text("32^",
                                 style: TextStyle(
                                   color: Colors.black87
                                 ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: Image(image: AssetImage('assets/images/temp.jpg'
                                    )),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("Sunday",
                                 style: TextStyle(
                                   color: Colors.black54,
                                   fontSize: 18
                                 ),
                                ),
                                SizedBox(height: 10),
                                Text("31^",
                                 style: TextStyle(
                                   color: Colors.black54
                                 ),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  )
                  
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.4,
              maxChildSize: 1,
            minChildSize: 0.4,
              builder: (context,scrollController){
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
                 borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                 
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      controller: scrollController,
                                          child: Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: FlatButton(
                                                              child: Container(
                                  width: double.infinity,
                                  height: 200,
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
                                    
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text("Air Quality Index",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 30,
                                        ),
                                        ),
                                        Text("_ _",
                                        style: TextStyle(
                                          color: Colors.black87
                                        ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Text("Tap For More",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 18
                                              ),
                                              ),
                                              Icon(Icons.arrow_forward_ios,
                                              color: Colors.black54,
                                              )
                                            ],
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ), onPressed: () {
                                  Navigator.pushNamed(context,'/mapData');
                                },
                              ),
                            ),
                            // just for now
                            SizedBox(height: 100),
                            Center(child: CircularProgressIndicator(backgroundColor: Colors.white,),),
                            
                            
                           
                          ],
                        ),
                        
                      ),
                    ),
                  ),

                )
              );
              },
              
              ),
          ],
        ),
      ),
      
    );
  }
}