class Country {
  var country = "China";
  var city;
  var _animal = "เป็ด";
  static var color = "RED";

  Country(this.city, this._animal);

  Country.thai(String city, String animal) : this(city, animal);

  void callHello() {
    print("สวัสดีค้า");
  }

  String callAnimal() {
    return this._animal;
  }
}