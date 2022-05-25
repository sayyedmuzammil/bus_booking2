import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant.dart';
import '../../../controller.dart';

Column Seat_availability_Volvo() {
    return Column(
                       children: [
                         Styles.KHeight20, 
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Row(
                               children: [
                                 Seat_button_volvo(0,"A1"),
                                 Styles.KWidth20, 
                                  Seat_button_volvo(1, "A2"),
                                  Styles.KWidth20,   
                               ],
                             ),
                            Row(children: [
                             Seat_button_volvo(2,"A3"),  
                             Styles.KWidth20,    
                             Seat_button_volvo(3, "A4"),   
                            ],)
                           ],
                         ),
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Row(
                               children: [
                                 Seat_button_volvo(4,"B1"),
                                 Styles.KWidth20, 
                                  Seat_button_volvo(5, "B2"),
                                  Styles.KWidth20,   
                               ],
                             ),
                            Row(children: [
                             Seat_button_volvo(6,"B3"),  
                             Styles.KWidth20,    
                             Seat_button_volvo(7, "B4"),   
                            ],)
                           ],
                         ),
                         Styles.KHeight20,  
                           Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Row(
                               children: [
                                 Seat_button_volvo(8,"C1"),
                                 Styles.KWidth20, 
                                  Seat_button_volvo(9, "C2"),
                                  Styles.KWidth20,   
                               ],
                             ),
                            Row(children: [
                             Seat_button_volvo(10,"C3"),  
                             Styles.KWidth20,    
                             Seat_button_volvo(11, "C4"),   
                            ],)
                           ],
                         ),
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Row(
                               children: [
                                 Seat_button_volvo(12,"D1"),
                                 Styles.KWidth20, 
                                  Seat_button_volvo(13, "D2"),
                                  Styles.KWidth20,   
                               ],
                             ),
                            Row(children: [
                             Seat_button_volvo(14,"D3"),  
                             Styles.KWidth20,    
                             Seat_button_volvo(15, "D4"),   
                            ],)
                           ],
                         ),
                         Styles.KHeight20,  
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [
                             Row(
                               children: [
                                 Seat_button_volvo(16,"E1"),
                                 Styles.KWidth20, 
                                  Seat_button_volvo(17, "E2"),
                                  Styles.KWidth20,   
                               ],
                             ),
                            Row(children: [
                             Seat_button_volvo(18,"E3"),  
                             Styles.KWidth20,    
                             Seat_button_volvo(19, "E4"),   
                            ],)
                           ],
                         ),
                        //  
                       ],
                     );
  }
GestureDetector Seat_button_volvo(current_index, text) {
    return GestureDetector(
                      onTap: (){
                      if(ui_control.seat_booking_volvo[current_index]=="Available"){
                        ui_control.seat_booking_volvo[current_index]="Selected"; 
                        print("tapped now Selected ");
                       
                      }
                      else if(ui_control.seat_booking_volvo[current_index]=="Selected"){
                        ui_control.seat_booking_volvo[current_index]="Available"; 
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
                          opacity:ui_control.seat_booking_volvo[current_index]=="Reserved"? .5:1,  
                          child: FittedBox(
                            fit: BoxFit.fitWidth,  
                                  child: Container(
                                  width: 40,  
                                  height: 40,     
                                  decoration: BoxDecoration(
                            color: 
                            ui_control.seat_booking_volvo[current_index]!="Selected"?
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