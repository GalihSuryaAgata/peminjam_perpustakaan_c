import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_klasc/app/data/model/response/response_pinjam.dart';


import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PeminjamanView'),
          centerTitle: true,
        ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index){
            DataPinjam dataPinjam = state[index];
            return ListTile(
              title: Text("Peminjaman"),
              subtitle: Text("Buku: ${dataPinjam.book?.judul}\nTanggal Pinjam: ${dataPinjam.tanggalPinjam}\nTanggal Kembali: ${dataPinjam.tanggalKembali}\nStatus: ${dataPinjam.status} "),
            );
          },
          separatorBuilder: (context,index)=> Divider(),
        ))
    );
  }
}