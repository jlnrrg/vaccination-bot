import 'dart:io';

import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

final downloaderProvider = Provider((ref) => Downloader());

class Downloader {
  Downloader();

  static void callback(String id, DownloadTaskStatus status, int progress) {}

  late String localPath;

  Future<bool> requestPermission() async {
    final hasGranted = await _checkPermission();

    if (hasGranted) {
      await _prepareSaveDir();
      return true;
    }
    return false;
  }

  Future<bool> _checkPermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        final result = await Permission.storage.request();
        if (result == PermissionStatus.granted) {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  Future<void> requestDownload(String? url) async {
    if (url != null) {
      await FlutterDownloader.enqueue(
          url: url,
          savedDir: localPath,
          showNotification: true,
          openFileFromNotification: true);
    }
  }

  // Future<void> _cancelDownload(String? taskId) async {
  //   if (taskId != null) {
  //     await FlutterDownloader.cancel(taskId: taskId);
  //   }
  // }

  // Future<void> _pauseDownload(String? taskId) async {
  //   if (taskId != null) {
  //     await FlutterDownloader.pause(taskId: taskId);
  //   }
  // }

  // Future<String?> _resumeDownload(String? taskId) async {
  //   if (taskId != null) {
  //     final String? newTaskId = await FlutterDownloader.resume(taskId: taskId);
  //     return newTaskId;
  //   }
  // }

  // Future<String?> _retryDownload(String? taskId) async {
  //   if (taskId != null) {
  //     final String? newTaskId = await FlutterDownloader.retry(taskId: taskId);
  //     return newTaskId;
  //   }
  // }

  Future<void> _prepareSaveDir() async {
    localPath = (await _findLocalPath())! + Platform.pathSeparator + 'Download';

    final savedDir = Directory(localPath);
    final bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
  }

  Future<String?> _findLocalPath() async {
    final directory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return directory?.path;
  }
}
