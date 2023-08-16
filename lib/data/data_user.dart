class User {
  String? name;
  String? phone;
  String? email;
  String? password;
  String? image;

  User(this.name, this.phone, this.email, this.password, this.image);

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
  }

  User.defaultNull(
      [this.name = "Mary Nguyen",
      this.phone = "0987657992",
      this.email = "marynguyen@gmail.com",
      this.password = "password",
      this.image = "'assets/image/avatar.png"]);

  Map<String, dynamic> toJson() {
    return {'name': name, 'phone': phone, 'email': email, 'password': password, 'image': image};
  }
}