// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class ImageDownloader {
//   Future<void> downloadImage(String imageUrl) async {
//     var status = await Permission.storage.request();
//     if (!status.isGranted) {
//       _showToast("يجب منح صلاحية التخزين");
//       return;
//     }

//     try {
//       final response = await http.get(Uri.parse(imageUrl));
//       final directory = await getExternalStorageDirectory();
//       final downloadDir = Directory('${directory!.path}/Download');

//       if (!await downloadDir.exists()) {
//         await downloadDir.create(recursive: true);
//       }

//       final fileName = 'image_${DateTime.now().millisecondsSinceEpoch}.jpg';
//       final file = File('${downloadDir.path}/$fileName');
//       await file.writeAsBytes(response.bodyBytes);

//       _showToast("تم الحفظ في مجلد التنزيلات");
//     } catch (e) {
//       _showToast("خطأ في التحميل: $e");
//     }
//   }

//   void _showToast(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//     );
//   }
// }
