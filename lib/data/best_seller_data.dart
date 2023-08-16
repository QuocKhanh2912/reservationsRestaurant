class BestSellerData {
  String dishImage;
  String dishName;
  String addressRestaurant;

  BestSellerData(
      {required this.dishImage,
      required this.dishName,
      required this.addressRestaurant});
}

BestSellerData bestSeller1 = BestSellerData(
    dishImage: 'assets/images/home_page/best_seller/beef_ribs.png',
    dishName: 'Beef Rigs',
    addressRestaurant: 'An BBQ Su Van Hanh');
BestSellerData bestSeller2 = BestSellerData(
    dishImage: 'assets/images/home_page/best_seller/beef_bacon.png',
    dishName: 'Beef Bacon',
    addressRestaurant: 'An BBQ Dong Khoi');
BestSellerData bestSeller3 = BestSellerData(
    dishImage: 'assets/images/home_page/best_seller/beef_stake.png',
    dishName: 'Beef Stake',
    addressRestaurant: 'An BBQ Nguyen Van Cu');
BestSellerData bestSeller4 = BestSellerData(
    dishImage: 'assets/images/home_page/best_seller/salad.png',
    dishName: 'Salad',
    addressRestaurant: 'An BBQ Vo Van Ngan');

List<BestSellerData> listBestSellerMockData = [
  bestSeller1,
  bestSeller2,
  bestSeller3,
  bestSeller4
];
