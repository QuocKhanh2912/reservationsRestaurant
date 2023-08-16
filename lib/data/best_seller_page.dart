class BestSellerPageData {
  String dishImage;
  String dishName;
  String dishDescription;

  BestSellerPageData(
      {required this.dishImage,
      required this.dishName,
      required this.dishDescription});
}

BestSellerPageData dish_1 = BestSellerPageData(
    dishImage: 'assets/images/best_seller_page/best_seller_1.png',
    dishName: 'Beef Ribs',
    dishDescription: 'USDA beef ribs finger');
BestSellerPageData dish_2 = BestSellerPageData(
    dishImage: 'assets/images/best_seller_page/best_seller_2.png',
    dishName: 'Beef Bacon',
    dishDescription: 'USDA beef bacon');
BestSellerPageData dish_3 = BestSellerPageData(
    dishImage: 'assets/images/best_seller_page/best_seller_3.png',
    dishName: 'Beefstake',
    dishDescription: 'USDA beefstake');
BestSellerPageData dish_4 = BestSellerPageData(
    dishImage: 'assets/images/best_seller_page/best_seller_4.png',
    dishName: 'Salad',
    dishDescription: 'Lemony White Bean Salad with Prosciutto');
BestSellerPageData dish_5 = BestSellerPageData(
    dishImage: 'assets/images/best_seller_page/best_seller_5.png',
    dishName: 'Berry Mojito',
    dishDescription: 'Homemade berry syrup');

List<BestSellerPageData> listBestSellerPageMockData = [
  dish_1,
  dish_2,
  dish_3,
  dish_4,
  dish_5,
  dish_1,
  dish_2,
  dish_3
];
