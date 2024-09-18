import 'package:get/get.dart';
import 'package:mindglow/Controller/Services/authservices.dart';
import 'package:mindglow/Model/usermodel.dart';

class Appstatecontroller extends GetxController {
  var currentindex = 0.obs;
  int get getcurrentindex => currentindex.value;
  void setcurrentindex(int index) {
    currentindex.value = index;
  }

  var userData = Rxn<Usermodel>();

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    final userdata = await Authservices().fetchuser();
    userData.value = userdata;
  }
}
