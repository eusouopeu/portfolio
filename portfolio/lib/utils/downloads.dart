// // import 'dart:io';
// // import 'package:permission_handler/permission_handler.dart';
// // import 'package:flutter/services.dart' show rootBundle;
// // import 'package:path_provider/path_provider.dart';
// // import 'package:open_file/open_file.dart';

// // Future<bool> requestStoragePermission() async {
// //   var status = await Permission.storage.status;
// //   if (!status.isGranted) {
// //     var result = await Permission.storage.request();
// //     return result.isGranted;
// //   }
// //   return true;
// // }

// // Future<void> saveFile(String url) async {
// //   final byteData = await rootBundle.load('files/$url');

// //   String dir = (await getApplicationDocumentsDirectory()).path;
// //   File file = File('/portfolio/$dir/$url');

// //   await file.writeAsBytes(byteData.buffer
// //       .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

// //   // Optional: Open the file
// //   // OpenFile.open('$dir/$url');
// // }

// // Future<void> openFile(String filename) async {
// //   if (await requestStoragePermission()) {
// //     String dir = (await getApplicationDocumentsDirectory()).path;
// //     String filePath = "${dir}/$filename";

// //     final file = File(filePath);
// //     if (await file.exists()) {
// //       OpenFile.open(filePath);
// //     } else {
// //       print("File does not exist!");
// //     }
// //   } else {
// //     print("Storage permission denied!");
// //   }
// // }

// import 'dart:io';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

// dynamic requestStoragePermission() async {
//   var status = await Permission.storage.status;
//   if (!status.isGranted) {
//     var result = await Permission.storage.request();
//     return result.isGranted;
//   }
//   return true;
// }

// dynamic saveFileFromAssets(String assetPath, String filename) async {
//   // Solicitar permissão de armazenamento
//   bool permissionGranted = await requestStoragePermission();
//   if (!permissionGranted) {
//     return;
//   }

//   // Carregar o arquivo dos assets
//   final byteData = await rootBundle.load(assetPath);

//   // Obter o diretório de documentos do dispositivo
//   final directory = await getApplicationDocumentsDirectory();

//   // Criar um caminho completo para salvar o arquivo
//   final filePath = '${directory.path}/$filename';
//   final file = File(filePath);

//   // Escrever o arquivo no dispositivo
//   await file.writeAsBytes(byteData.buffer.asUint8List());
// }
