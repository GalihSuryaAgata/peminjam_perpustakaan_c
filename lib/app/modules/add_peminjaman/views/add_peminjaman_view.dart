import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.parameters['judul'].toString()}'),
        centerTitle: true,
      ),
      body:
      Form(
          key: controller.formKey,
          child: Column(
            children: [
              Text('Buku yang dipinjam : ${Get.parameters['judul']}'),
              // DateTimePicker
              DateTimePicker(
                icon: Icon(Icons.date_range_rounded),
                controller: controller.tanggal_pinjamController,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Tambahkan Tanggal Pinjam',
                dateMask: 'yyyy-MM-dd',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              DateTimePicker(
                icon: Icon(Icons.date_range_rounded),
                controller: controller.tanggal_kembaliController,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Tambahkan Tanggal Kembali',
                dateMask: 'yyyy-MM-dd',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                  onPressed: () {
                    controller.addpinjam();
                  },
                  child: Text('Tambah'))),
            ],
          )),
    );
  }
}