import 'conutry.dart';
import 'conutry.dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("กรุงปักกิ่ง", "ช้าง");

  void callSuper() {
    print("เมืองหลวง :" + super.city);
    super.callHello();
  }

  @override
  String callAnimal() {
    return "ช้าง";
  }
}