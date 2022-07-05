import 'package:get/get.dart';
import 'package:getx_1/model/product.dart';

class CartController extends GetxController{
  var cartItems = <Product>[].obs;
  double get totalPrice => cartItems.fold(0, (e,item) => e+item.price);

  void addToItem(Product product){
    cartItems.add(product);
  }
}