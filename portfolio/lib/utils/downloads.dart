// import 'dart:io';

// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

// Future<void> requestPermissions() async {
//   var status = await Permission.storage.status;
//   if (!status.isGranted) {
//     await Permission.storage.request();
//   }
// }

// Future<void> downloadFile(String url, String fileName) async {
//   var status = await Permission.storage.status;
//   if (status.isGranted) {
//     final directory = await getApplicationDocumentsDirectory();
//     final filePath = '/portfolio/lib/assets/$fileName';
//     final response = await http.get(Uri.parse(url));
//     final file = File(filePath);
//     await file.writeAsBytes(response.bodyBytes);
//     return file;
//   } else {
  
//     await requestPermissions();
//   }
// }
