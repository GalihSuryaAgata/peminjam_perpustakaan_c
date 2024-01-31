import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController>  {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body:  Center(

          child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.namaController,
                    decoration: InputDecoration(hintText: "Masukkan nama"),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                      controller: controller.usernameController,
                      decoration: InputDecoration(hintText: "Masukkan Username"),
                      validator: (value) {
                        if (value!.length < 2) {
                          return "username tidak boleh kosong";
                        }
                        return null;
                      }
                  ),TextFormField(
                      controller: controller.telpController,
                      decoration: InputDecoration(hintText: "telepon tidak boleh kosong"),
                      validator: (value) {
                        if (value!.length < 2) {
                          return "telepon tidak boleh kosong";
                        }
                        return null;
                      }
                  ),
                  TextFormField(
                      controller: controller.alamatController,
                      decoration: InputDecoration(hintText: "alamat tidak boleh kosonh"),
                      validator: (value) {
                        if (value!.length < 2) {
                          return "alamat tidak boleh kosong";
                        }
                        return null;
                      }
                  ), TextFormField(
                      controller: controller.passwordController,
                      decoration: InputDecoration(hintText: "Masukkan password"),
                      validator: (value) {
                        if (value!.length < 2) {
                          return "password tidak boleh kosong";
                        }
                        return null;
                      }
                  ),
                  Obx(() => controller.loading.value
                      ? CircularProgressIndicator() :
                  ElevatedButton(onPressed: (){controller.regist();}, child: Text("Register"))
                  )
                ],
              ))
        ),
      );
  }
}
