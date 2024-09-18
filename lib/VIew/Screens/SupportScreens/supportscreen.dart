import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Services/apiservices.dart';
import 'package:mindglow/VIew/Screens/SupportScreens/connectscreen.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class Supportscreen extends StatefulWidget {
  const Supportscreen({super.key});

  @override
  State<Supportscreen> createState() => _SupportscreenState();
}

final ApiServicesController apiServicesController = Get.find();

class _SupportscreenState extends State<Supportscreen> {
  @override
  void initState() {
    super.initState();
    apiServicesController.fetchComments();
    // apiServicesController.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _supportScreenAppbar(context), body: _supportScreenBody());
  }
}

AppBar _supportScreenAppbar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.green.withOpacity(.7),
      title: const Customtext(
          text: 'Community', fontWeight: FontWeight.bold, fontsize: 18),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConnectScreen()));
            },
            icon: const Icon(Icons.group))
      ]);
}

Widget _supportScreenBody() {
  return Obx(() {
    if (apiServicesController.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }
    if (apiServicesController.errorMessage.isNotEmpty) {
      return Center(
          child: Customtext(text: apiServicesController.errorMessage.value));
    }
    return ListView.builder(
        itemBuilder: (context, index) {
          final email = apiServicesController.comments[index]["email"];
          var firstletter = email.isNotEmpty
              ? apiServicesController.comments[index]["email"][0]
              : "";
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  color: Colors.green[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        width: 50,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.green[400],
                                  radius: 25,
                                  child: Customtext(
                                      text: firstletter,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 18)),
                              const SizedBox(width: 15),
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Customtext(
                                        text: apiServicesController
                                            .comments[index]["email"],
                                        fontWeight: FontWeight.bold,
                                        fontsize: 14),
                                    const SizedBox(height: 5),
                                    Customtext(
                                        text: apiServicesController
                                            .comments[index]["body"])
                                  ]))
                            ])),
                  )));
        },
        itemCount: apiServicesController.comments.length);
  });
}
