import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Services/apiservices.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class Libraryscreen extends StatefulWidget {
  const Libraryscreen({super.key});

  @override
  State<Libraryscreen> createState() => _LibraryscreenState();
}

final ApiServicesController apiServicesController =
    Get.put(ApiServicesController());

class _LibraryscreenState extends State<Libraryscreen> {
  @override
  void initState() {
    super.initState();
    apiServicesController.fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _libraryScreenAppbar(),
      body: _libraryScreenBody(),
    );
  }
}

AppBar _libraryScreenAppbar() {
  return AppBar(
      backgroundColor: Colors.green.withOpacity(.7),
      title: const Customtext(
          text: 'Library', fontWeight: FontWeight.bold, fontsize: 18),
      centerTitle: true);
}

Widget _libraryScreenBody() {
  return Obx(() {
    if (apiServicesController.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }
    if (apiServicesController.errorMessage.isNotEmpty) {
      return Center(child: Text(apiServicesController.errorMessage.value));
    }

    return contentBodyLibrary();
  });
}

Widget contentBodyLibrary() {
  return ListView.builder(
      itemCount: apiServicesController.posts.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.green.withOpacity(.3),
                              const Color.fromARGB(255, 148, 205, 187)
                            ]),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Customtext(
                                    text: 'Chapter ${index + 1}',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 20),
                                const SizedBox(width: 10),
                                Icon(Icons.menu_book_sharp,
                                    color: Colors.grey[900])
                              ]),
                          const SizedBox(height: 10),
                          Customtext(
                              text: apiServicesController.posts[index]['title'],
                              fontWeight: FontWeight.bold,
                              fontsize: 16),
                          const SizedBox(height: 10),
                          Customtext(
                              text: apiServicesController.posts[index]['body'],
                              fontWeight: FontWeight.bold,
                              fontsize: 12,
                              color: Colors.grey.shade700)
                        ])))));
      });
}
