import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/init_controller.dart';

class InitView extends GetView<InitController> {
  const InitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InitView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
