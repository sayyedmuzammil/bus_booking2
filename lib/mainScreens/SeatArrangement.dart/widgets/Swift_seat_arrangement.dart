// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant.dart';
import '../../../controller.dart';

Column Seat_availability_Swift() {
    return Column(
                       children: [
                        //  List.generate(20, (index) => Text("hello")), 
                         Styles.KHeight20, 
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(0,"A1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(1, "A2"),
                              Styles.KWidth20,    
                             Seat_button_swift(2,"A3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(3, "A4"),   
                            ],)
                           ],
                         ),
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(4,"B1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(5, "B2"),
                              Styles.KWidth20,    
                             Seat_button_swift(6,"B3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(7, "B4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(8,"C1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(9, "C2"),
                              Styles.KWidth20,    
                             Seat_button_swift(10,"C3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(11, "C4"),   
                            ],), 

                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(12,"D1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(13, "D2"),
                              Styles.KWidth20,    
                             Seat_button_swift(14,"D3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(15, "D4"),   
                            ],), 

                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(16,"E1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(17, "E2"),
                              Styles.KWidth20,    
                             Seat_button_swift(18,"E3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(19, "E4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(20,"F1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(21, "F2"),
                              Styles.KWidth20,    
                             Seat_button_swift(22,"F3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(23, "F4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(24,"G1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(25, "G2"),
                              Styles.KWidth20,    
                             Seat_button_swift(26,"G3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(27, "G4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(28,"H1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(29, "H2"),
                              Styles.KWidth20,    
                             Seat_button_swift(30,"H3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(31, "H4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(32,"G1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(33, "G2"),
                              Styles.KWidth20,    
                             Seat_button_swift(34,"G3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(35, "G4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Seat_button_swift(36,"H1"),
                             Styles.KWidth20, 
                            Row(children: [
                               Seat_button_swift(37, "H2"),
                              Styles.KWidth20,    
                             Seat_button_swift(38,"H3"),  
                             Styles.KWidth20,    
                             Seat_button_swift(39, "H4"),   
                            ],)
                           ],
                         ), 
                         Styles.KHeight20, 
                       ],
                     );
  }
GestureDetector Seat_button_swift(current_index, text) {
    return GestureDetector(
                      onTap: (){
                      if(ui_control.seat_booking_swift[current_index]=="Available"){
                        ui_control.seat_booking_swift[current_index]="Selected"; 
                        print("tapped now Selected ");
                       
                      }
                      else if(ui_control.seat_booking_swift[current_index]=="Selected"){
                        ui_control.seat_booking_swift[current_index]="Available"; 
                         print("tapped now UnSelected ");
                       
                        // ui_control.update(); 
                      }
                      // ui_control.update(['Seat_button']);
                      },
                      child: 
                      
                      Obx(()
                        // id: 'Seat_button',
                        // builder: (Controller)
                        
                        =>
                      Opacity(
                          opacity:ui_control.seat_booking_swift[current_index]=="Reserved"? .5:1,  
                          child: FittedBox(
                            fit: BoxFit.fitWidth,  
                                  child: Container(
                                  width: 40,  
                                  height: 40,     
                                  decoration: BoxDecoration(
                            color: 
                            ui_control.seat_booking_swift[current_index]!="Selected"?
                            Styles.primary_color:
                            Styles.primary_color_blue, 
                            borderRadius: BorderRadius.circular(10),
                             border: Border.all(
                              color: Colors.white, 
                            ),
                          ),
                                  child: Center(child: Text(text,  style: TextStyle(color: Colors.white, fontSize: 12),    )),    
                                 ),
                                ),
                        ),
                      ),
                    );
  }