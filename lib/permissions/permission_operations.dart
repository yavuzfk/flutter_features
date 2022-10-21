import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionOperations extends StatefulWidget {
  const PermissionOperations({Key? key}) : super(key: key);

  @override
  State<PermissionOperations> createState() => _PermissionOperationsState();
}

class _PermissionOperationsState extends State<PermissionOperations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permission Handler'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.camera_alt),
              ),
              onTap: () async {
                PermissionStatus cameraStatus =
                    await Permission.camera.request();
                if (cameraStatus == PermissionStatus.granted) {}
                if (cameraStatus == PermissionStatus.denied) {}
                if (cameraStatus == PermissionStatus.permanentlyDenied) {
                  openAppSettings();
                }
              },
              title: const Text("Camera Permission"),
              subtitle: const Text("Status of Permission"),
            ),
          ),
        ],
      ),
    );
  }
}
