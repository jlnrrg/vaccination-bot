import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Downloader {
  Downloader(this.platform);

  final TargetPlatform platform;

  late String localPath;
  late bool hasGranted;

// Future<void> _retryRequestPermission() async {
//     final hasGranted = await _checkPermission();

//     if (hasGranted) {
//       await _prepareSaveDir();
//     }

//     setState(() {
//       _permissionReady = hasGranted;
//     });
//   }
  Future<void> _initialize() async {
    await FlutterDownloader.initialize();
  }

  Future<bool> _checkPermission() async {
    if (platform == TargetPlatform.android) {
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

  Future<void> _retryRequestPermission() async {
    final hasGranted = await _checkPermission();

    if (hasGranted) {
      await _prepareSaveDir();
    }
  }

  Future<void> _requestDownload(String? url) async {
    if (url != null) {
      String? taskId = await FlutterDownloader.enqueue(
          url: url,
          headers: {"auth": "test_for_sql_encoding"},
          savedDir: localPath,
          showNotification: true,
          openFileFromNotification: true);
    }
  }

  Future<void> _cancelDownload(String? taskId) async {
    if (taskId != null) {
      await FlutterDownloader.cancel(taskId: taskId);
    }
  }

  Future<void> _pauseDownload(String? taskId) async {
    if (taskId != null) {
      await FlutterDownloader.pause(taskId: taskId);
    }
  }

  Future<String?> _resumeDownload(String? taskId) async {
    if (taskId != null) {
      final String? newTaskId = await FlutterDownloader.resume(taskId: taskId);
      return newTaskId;
    }
  }

  Future<String?> _retryDownload(String? taskId) async {
    if (taskId != null) {
      final String? newTaskId = await FlutterDownloader.retry(taskId: taskId);
      return newTaskId;
    }
  }

  Future<void> _prepareSaveDir() async {
    localPath = (await _findLocalPath())! + Platform.pathSeparator + 'Download';

    final savedDir = Directory(localPath);
    final bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
  }

  Future<String?> _findLocalPath() async {
    final directory = platform == TargetPlatform.android
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return directory?.path;
  }
}
