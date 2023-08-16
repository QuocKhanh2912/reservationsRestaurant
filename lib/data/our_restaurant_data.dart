class OurRestaurantData {
  String restaurantImage;
  String restaurantName;
  String addressRestaurant;

  OurRestaurantData(
      {required this.restaurantImage,
        required this.restaurantName,
        required this.addressRestaurant});
}

OurRestaurantData ourRestaurant1 = OurRestaurantData(
    restaurantImage: 'assets/images/home_page/our_restaurant/bbq_su_van_hanh.png',
    restaurantName: 'An BBQ Su Van Hanh',
    addressRestaurant: 'No. 716 Su Van Hanh, Ward 12, District 10, HCMC');
OurRestaurantData ourRestaurant2 = OurRestaurantData(
    restaurantImage: 'assets/images/home_page/our_restaurant/bbq_dong_khoi.png',
    restaurantName: 'An BBQ Dong Khoi',
    addressRestaurant: 'Vincom Center, No. 70 Le Thanh Ton, Ben Nghe Ward, District 1, HCMC');
OurRestaurantData ourRestaurant3 = OurRestaurantData(
    restaurantImage: 'assets/images/home_page/our_restaurant/bbq_nguyen_van_cu.png',
    restaurantName: 'An BBQ Nguyen Van Cu',
    addressRestaurant: 'No. 235 Nguyen Van Cu, Nguyen Cu Trinh Ward, District 10, HCMC');
OurRestaurantData ourRestaurant4 = OurRestaurantData(
    restaurantImage: 'assets/images/home_page/our_restaurant/bbq_vo_van_ngan.png',
    restaurantName: 'An BBQ Vo Van Ngan',
    addressRestaurant: 'No. 716 Vo Van Ngan, Binh Tho Ward, Thu Duc City, HCMC');

List<OurRestaurantData> listOurRestaurantMockData = [
  ourRestaurant1,
  ourRestaurant2,
  ourRestaurant3,
  ourRestaurant4
];
