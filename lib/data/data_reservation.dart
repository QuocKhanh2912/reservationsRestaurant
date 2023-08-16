import '../page/utils/assest_management.dart';

class Reservation {
  String? id;
  String? name;
  int? rate;
  String? comment;

  Reservation(this.id, this.name, this.rate, this.comment);

  Reservation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rate = json['rate'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rate': rate,
      'comment': comment,
    };
  }
}

class Data{
  static List restaurants = [['#716001', AssetsManagement.reservationRestaurant1, '25th',
    'September, Wednesday', 'An BBQ Su Van Hanh', '2 people, 18h00 - 18h30', "Finished"],
    ['#131001', AssetsManagement.reservationRestaurant2, '21st', 'September, Tuesday',
      'An BBQ Hoang Hoa Tham', '4 people, 18h30 - 19h00', "Pending"],
    ['#007001', AssetsManagement.reservationRestaurant3, '19th', 'September, Sunday',
      'An BBQ Dong Khoi', '3 people, 18h30 - 19h00', "Cancelled"]];
}