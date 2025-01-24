import 'package:get/get.dart';
import 'package:motion_shop/app/pages/model/product_model.dart';

class CartController extends GetxController {
  var cart = [].obs;
  // void addProduct(ProductModel product) {
  //   cart.add(product);
  // }

  // bool checkProduct(ProductModel product) => cart.contains(product);
}

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     final cartController = Get.put(CartController());
//     return Obx(
//       () => Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           surfaceTintColor: Colors.white,
//           centerTitle: true,
//           actions: [],
//           leading: IconButton(
//             iconSize: 30,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.chevron_left_rounded,
//               color: Colors.black,
//             ),
//           ),
//           title: Text(
//             "Cart Page",
//             style: GoogleFonts.inter(
//               fontSize: 22,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 Card(
//                   child: ListTile(
//                     tileColor: Colors.white,
//                     leading: CircleAvatar(
//                       radius: 20,
//                     ),
//                     title: Text("Product"),
//                     subtitle: Text("Rp. 100.000"),
//                     trailing: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.white,
//                         border: Border.all(color: Colors.black),
//                       ),
//                       // padding: EdgeInsets.all(1),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             onPressed: cartController.qtyDecrement,
//                             icon: const Icon(
//                               Icons.remove,
//                               color: Colors.red,
//                             ),
//                           ),
//                           Text("${cartController.qty}"),
//                           IconButton(
//                             onPressed: cartController.qtyIncrement,
//                             icon: const Icon(
//                               Icons.add,
//                               color: Colors.green,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Card(),
//                 Card(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CartController extends GetxController {
//   int qty = 0;

//   void qtyIncrement() {
//     qty++;
//     update();
//   }

//   void qtyDecrement() {
//     qty--;
//     update();
//   }
// }


// GetBuilder(
//       init: cartController,
//       builder: (controller) {
//         return Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             surfaceTintColor: Colors.white,
//             centerTitle: true,
//             actions: [],
//             leading: IconButton(
//               iconSize: 30,
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.chevron_left_rounded,
//                 color: Colors.black,
//               ),
//             ),
//             title: Text(
//               "Cart Page",
//               style: GoogleFonts.inter(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             backgroundColor: Colors.white,
//             elevation: 0,
//           ),
//           body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   Card(
//                     child: ListTile(
//                       tileColor: Colors.white,
//                       leading: const CircleAvatar(
//                         radius: 20,
//                       ),
//                       title: const Text("Product"),
//                       subtitle: const Text("Rp. 100.000"),
//                       trailing: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: Colors.white,
//                           border: Border.all(color: Colors.black),
//                         ),
//                         // padding: EdgeInsets.all(1),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             IconButton(
//                               onPressed: cartController.qtyDecrement,
//                               icon: const Icon(
//                                 Icons.remove,
//                                 color: Colors.red,
//                               ),
//                             ),
//                             Text("${cartController.qty}"),
//                             IconButton(
//                               onPressed: cartController.qtyIncrement,
//                               icon: const Icon(
//                                 Icons.add,
//                                 color: Colors.green,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Card(),
//                   Card(),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );