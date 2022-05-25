import 'package:get/get.dart';

var ui_control=Get.put(GetController());
class GetController extends GetxController {
  List<String> seat_booking_swift=["Available", "Reserved", "Reserved", "Available", "Reserved", "Reserved","Available", "Reserved","Available", "Available", "Available", "Reserved","Available", "Reserved", "Reserved", "Available", "Available", "Available", "Reserved","Available", "Reserved","Reserved", "Reserved","Available", "Available", "Reserved", "Reserved", "Available", "Available", "Available", "Reserved","Available", "Reserved", "Available", "Reserved", "Reserved","Available", "Reserved","Available", "Available", ].obs;
   List<String> seat_booking_volvo=[ "Reserved","Available", "Reserved","Available",  "Reserved", "Available", "Available",  "Reserved","Reserved", "Reserved","Available",  "Available", "Available", "Available", "Reserved", "Reserved","Available", "Reserved","Available", "Available", ].obs;
   var driver_swift="Ramesh".obs;
   var driver_volvo="Hashim".obs;
  //  List<String> swift_bus_details
  //  var seat_booking_index=0.obs;
  var selected_bus="Swift".obs;
}