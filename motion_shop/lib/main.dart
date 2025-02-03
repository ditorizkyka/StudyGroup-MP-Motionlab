import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/model/user_model.dart';
import 'package:motion_shop/app/shared/constanta.dart';
import 'app/routes/app_pages.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  // Hive.registerAdapter(ProductElementAdapter());
  box = await Hive.openBox('userBox');
  prdBox = await Hive.openBox('productBox');

  bool isLoggedIn = box.get('isLoggedIn', defaultValue: false);

  var initialRoute = isLoggedIn ? '/nav' : '/login';

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    ),
  );
}
