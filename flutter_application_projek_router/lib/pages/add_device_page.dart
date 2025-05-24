import 'package:flutter/material.dart';
import '../services/api_service.dart';

class AddDevicePage extends StatefulWidget {
  @override
  _AddDevicePageState createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String ip = '';

  Future<void> submit() async {
    if (_formKey.currentState!.validate()) {
      await ApiService.addDevice(name, ip);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Device')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama Device'),
                validator: (val) => val == null || val.isEmpty ? 'Wajib diisi' : null,
                onChanged: (val) => name = val,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'IP Address'),
                validator: (val) => val == null || val.isEmpty ? 'Wajib diisi' : null,
                onChanged: (val) => ip = val,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: submit, child: Text('Simpan')),
            ],
          ),
        ),
      ),
    );
  }
}
