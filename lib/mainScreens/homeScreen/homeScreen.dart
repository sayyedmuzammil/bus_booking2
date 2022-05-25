import 'package:bus_booking/constant.dart';
import 'package:bus_booking/controller.dart';
import 'package:bus_booking/mainScreens/SeatArrangement.dart/seatBooking.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _sta = TextEditingController();
  final _from = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primary_color,
      appBar: AppBar(
        backgroundColor: Styles.primary_color_light,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("Home Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 4), 
        child: Column(
          children: [
            Main_card(context,bus_name: "Swift", driver: ui_control.driver_swift,start_point: "Ernakulam", end_point: "Kozhikode", start_time: "12:30 AM", end_time: "3:05 AM",button_click: "Swift",journy_time: "2h 35m", bus_image: "https://fottam.com/wp-content/uploads/2019/11/Kerala-KSRTC-KURTC-Volvo-8400-Ernakulam-Alappuzha-bus-JN369-Vyttila-1160x651.jpg" ),
            Main_card(context,bus_name: "Volvo", driver: ui_control.driver_volvo,start_point: "Idukki", end_point: "Kannur", start_time: "8:30 PM", end_time: "4:40 AM", button_click: "Volvo",journy_time: "7h 10m", bus_image: "https://th.bing.com/th/id/R.e37fd7ae7f7b51a05ad0047dddd0f881?rik=EF78zB72Hc41BQ&riu=http%3a%2f%2fwww.volvobuses.com%2fcontent%2fdam%2fvolvo%2fvolvo-buses%2fmarkets%2fglobal%2fen-en%2fnews%2f2020%2f1860x1050-9400-Intercity-coach-BS4-2020.jpg&ehk=ODM3121mZCUGFZLciQmaFHtPgN%2fPomC8aDgDoWNB2To%3d&risl=&pid=ImgRaw&r=0"  ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column Main_card(BuildContext context,{driver, start_point, end_point, start_time, end_time, bus_name, bus_image, button_click, journy_time } ) {
    return Column(
      children: [
        Styles.KHeight20,
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Styles.primary_color_blue, width: 2),
              color: Styles.primary_color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Styles.KHeight10,
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Styles.primary_color_light,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(20)),
                            child: SizedBox(
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      bus_image)),
                              height: double.infinity,
                              width: 120,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                 Text(bus_name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                // Styles.KHeight10,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                  children: [
                                    Column(
                                      children: [
                                         Text("$start_point ",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                        Text(start_time,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Styles.primary_color_blue,
                                    ),
                                    Column(
                                      children: [
                                         Text(" $end_point",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                         Text(end_time,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Styles.KWidth10,
                                    Container(
                                      height: 20,
                                      width: 2,
                                      color: Styles.primary_color_blue,
                                    ),
                                    Styles.KWidth10,
                                     Obx(() => Text("Driver : $driver",  
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12))),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Seating Arrangement',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Styles.KWidth10,
                          Icon(
                            Icons.airline_seat_recline_normal,
                            size: 16,
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Styles.primary_color_blue,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0)),
                        // side:  BorderSide(
                        //     color: Styles.primary_color_light ), 
                      ),
                      onPressed: () async {
                          ui_control.selected_bus.value=button_click;
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            child:  SeatBooking(
                              bus_name: bus_name,
                              driver_name: driver, 
                              start_point: start_point, 
                              end_point: end_point, 
                              start_time: start_time,
                              end_time:  end_time, 
                              journy_time: journy_time, 


                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
