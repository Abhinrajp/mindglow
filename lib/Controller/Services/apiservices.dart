import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiServicesController extends GetxController {
  var isLoading = false.obs;
  var posts = [].obs;
  var comments = [].obs;
  var albums = [].obs;
  var photos = [].obs;
  var todos = [].obs;
  var users = [].obs;
  var errorMessage = ''.obs;
  Future<void> fetchPost() async {
    isLoading(true);
    try {
      final responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      posts.value = jsonDecode(responce.body);
    } catch (e) {
      errorMessage('Failed to fetch posts');
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchComments() async {
    isLoading(true);
    try {
      final responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
      comments.value = jsonDecode(responce.body);
      // log(responce.body);
    } catch (e) {
      errorMessage('Failed to fetch Comments');
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchUsers() async {
    isLoading(true);
    try {
      final responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      log(responce.body);
      users.value = jsonDecode(responce.body);
    } catch (e) {
      errorMessage('Failed to fetch Users');
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchPhotos() async {
    isLoading(true);
    try {
      final responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      photos.value = jsonDecode(responce.body);
    } catch (e) {
      errorMessage('Failed to fetch Photos');
    } finally {
      isLoading(false);
    }
  }
}
