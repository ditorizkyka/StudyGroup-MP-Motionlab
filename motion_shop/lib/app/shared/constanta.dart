import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

var dio = Dio();
const url = 'https://dummyjson.com';

late Box box;
late Box prdBox;
