class DemandCardModel {
  final String shopName;
  final String description;
  final String personName;
  final String phoneNumber;
  final String imageUrl;
  final List<ItemModel> requestedItems;
  final String status; 
  final List<OrderModel> orderHistory;

  DemandCardModel({
    required this.shopName,
    required this.description,
    required this.personName,
    required this.phoneNumber,
    required this.imageUrl,
    required this.requestedItems,
    required this.status,
    required this.orderHistory,
  });
}

class ItemModel {
  final String weight;
  final int quantity;

  ItemModel({
    required this.weight,
    required this.quantity,
  });
}

class OrderModel {
  final String sno;
  final String cylNo;
  final String date;
  final String driver;
  final String dispatch;

  OrderModel({
    required this.sno,
    required this.cylNo,
    required this.date,
    required this.driver,
    required this.dispatch,
  });
}
