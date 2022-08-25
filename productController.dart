import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/prodectmodel.dart';

class productController extends GetxController {
  List<product> productData = [];


  fatchProductData() {

    List<product> serverResponse=[
      product(id: 1, productName: 'T-shirt', productImage: "assets/image.jpg", productDescription: "some description about produt", price:999, favourite:false),
      product(id: 2, productName: 'T-shirt', productImage: "assets/12.jpg.jpg", productDescription: "some description about produt", price:129, favourite:false),
      product(id: 3, productName: 'T-shirt', productImage: "assets/login.jpg", productDescription: "some description about produt", price:24499, favourite:false),
    ];

    productData.assignAll(serverResponse);
  }


}