import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Services/apiservices.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

final ApiServicesController apiServicesController = Get.find();

class _ConnectScreenState extends State<ConnectScreen> {
  @override
  void initState() {
    super.initState();
    apiServicesController.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: connectioScreenAppbar(context), body: _connectScreenBody());
  }
}

AppBar connectioScreenAppbar(BuildContext context) {
  return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back)),
      title: const Customtext(
          text: 'Connect', fontWeight: FontWeight.bold, fontsize: 18),
      centerTitle: true);
}

Widget _connectScreenBody() {
  return Obx(
    () {
      if (apiServicesController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (apiServicesController.errorMessage.isNotEmpty) {
        return Center(
            child: Customtext(text: apiServicesController.errorMessage.value));
      }
      return ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                child: Container(
                    child: Column(children: [
              Customtext(text: apiServicesController.users[index]["name"])
            ])));
          },
          itemCount: apiServicesController.users.length);
    },
  );
}
