import '../page/utils/assest_management.dart';

class User {
  String image;
  String name;

  User(this.image, this.name,);
}

class Company {
  String name;
  String address;
  String gpk;
  String phoneNumber;
  String email;

  Company(this.name,
      this.address,
      this.gpk,
      this.phoneNumber,
      this.email,);
}

User userMaryNguyen = User(AssetsManagement.avatarMarryNguyen,'Mary Nguyen',);
User userID=User(AssetsManagement.avatarBlank, 'ID #012345');

Company company =
Company(
    'Golden Gate Trading Service Joint Stock Company',
    'Head office: No. 60 Pho Duc Chinh Street, Nguyen Thai Binh Ward, District 1, HCMC, Vietnam',
    'GPK: 0102721191 issued on 09/04/2008',
    'Tel: 043 222 3000',
    'Email: support@anbbq.com.vn');
