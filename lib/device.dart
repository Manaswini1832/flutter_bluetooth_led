import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceListEntry extends StatelessWidget {
  final VoidCallback onTap;
  final BluetoothDevice device;

  BluetoothDeviceListEntry({required this.onTap, required this.device});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(Icons.devices),
      title: Text(device.name ?? "Unknown device"),
      subtitle: Text(device.address.toString()),
      trailing: TextButton(
        child: Text('Connect'),
        onPressed: onTap,
        style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
      ),
    );
  }
}
