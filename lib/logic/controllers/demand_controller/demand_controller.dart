import 'package:flutter/material.dart';
import 'package:tracklet/data/model/demand_model/demand_model.dart';

class DemandProvider with ChangeNotifier {
  int stockCylinders = 40;
  int emptyCylinders = 15;

  bool iconOnRight = false;
  double _iconAlignmentX = -1; 
  double get iconAlignmentX => _iconAlignmentX;

  void updateIconPosition(double value) {
    _iconAlignmentX = value.clamp(-1.0, 1.0);
    notifyListeners();
  }

  void resetIconPosition() {
    _iconAlignmentX = -1;
    notifyListeners();
  }

  void toggleIconPosition(bool toRight) {
    iconOnRight = toRight;
    notifyListeners();
  }

  final List<DemandCardModel> _demandList = [
    DemandCardModel(
      shopName: "Shop 01",
      description: "Shop 01 request to deliver mention cylinder",
      personName: "Syed Bilal Ahmed Khan",
      phoneNumber: "0347-5805904",
      imageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      requestedItems: [
        ItemModel(weight: "50 KG", quantity: 3),
        ItemModel(weight: "80 KG", quantity: 5),
      ],
      status: "Delivered",
      orderHistory: [
        OrderModel(sno: "01", cylNo: "201", date: "04/02", driver: "Majid", dispatch: "50 KG (3)"),
        OrderModel(sno: "02", cylNo: "202", date: "05/02", driver: "Ali", dispatch: "30 KG (2)"),
        OrderModel(sno: "03", cylNo: "203", date: "06/02", driver: "Majid", dispatch: "50 KG (1)"),
        OrderModel(sno: "04", cylNo: "204", date: "07/02", driver: "Majid", dispatch: "44 KG (4)"),
      ],
    ),
    DemandCardModel(
      shopName: "Shop 02",
      description: "Need urgent delivery of empty cylinders",
      personName: "Ali Raza",
      phoneNumber: "0301-2345678",
      imageUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      requestedItems: [
        ItemModel(weight: "20 KG", quantity: 2),
      ],
      status: "Delivered",
      orderHistory: [
        OrderModel(sno: "01", cylNo: "301", date: "08/02", driver: "Hamza", dispatch: "20 KG (2)"),
      ],
    ),
  ];

  List<DemandCardModel> get demandList => _demandList;
}
