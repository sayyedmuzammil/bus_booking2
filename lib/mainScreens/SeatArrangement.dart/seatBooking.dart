// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'package:bus_booking/constant.dart';
import 'package:bus_booking/controller.dart';
import 'package:bus_booking/mainScreens/SeatArrangement.dart/widgets/Volvo_seat_avaialbility.dart';

import 'widgets/Swift_seat_arrangement.dart';

class SeatBooking extends StatelessWidget {
  var bus_name;
  var start_point;
  var end_point;
  var start_time;
  var end_time;
  var journy_time; 
  var driver_name;
  SeatBooking({
    Key? key,
    required this.bus_name,
    required this.start_point,
    required this.end_point,
    required this.start_time,
    required this.end_time,
    required this.journy_time,
    required this.driver_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Styles.primary_color,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 1200,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 210,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children:const [
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Styles.color_grey,
                            ),
                            Styles.KWidth10,
                            Text("Reserved",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                        Row(
                          children:const [
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white, 
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Styles.primary_color,
                              ),
                            ),
                            Styles.KWidth10,
                            Text("Available",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                        Row(
                          children:const [
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Styles.primary_color_blue,
                            ),
                            Styles.KWidth10,
                            Text("Selected",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        )
                      ],
                    ),
                    Styles.KHeight20,
                    Center(
                        child: Text( "Driver : $driver_name",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18))),
                    Styles.KHeight20,
                    //  Text("hie dsjkfhsd"),
                    ui_control.selected_bus=="Volvo"?
                    Seat_availability_Volvo():Seat_availability_Swift()
                  ],
                ),
              ),
            ),
            Container(
              decoration:  const BoxDecoration(
                  //  color: Colors.lime,
                  color: Styles.primary_color_light,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              height: 180,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context); 
                          },
                          color: Styles.primary_color_light,
                          shape: const CircleBorder(
                              side: BorderSide(
                            color: Styles.color_grey,
                          )),
                          child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 32,
                              )),
                        ),
                       Text(bus_name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        MaterialButton(
                          onPressed: () {},
                          color: Styles.primary_color_light,
                          shape: const CircleBorder(
                              side: BorderSide(
                            color: Styles.color_grey,
                          )),
                          child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.white,
                                size: 32,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, 
                      children: [
                        Column(
                          children: [
                            Text(start_point,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 22)),
                            Text(start_time,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            // SvgPicture.asset("lib/assets/images/bus-ticket-svgrepo-com.svg", color: Colors.white, height: 50 ),
                            Image.asset(
                              'lib/assets/images/bus.png',
                              color: Colors.white,
                              height: 24,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(journy_time,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(end_point,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 22)),
                            Text(end_time,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
