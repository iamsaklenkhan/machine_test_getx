import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService extends GetxService {
  final String baseUrl = "http://44.199.1.149:4000/";
  // final String baseUrl = "http://44.199.1.149:4000/loginUser";

  // Login method
  Future<http.Response?> postApi(
      {Map<String, String>? from, String? endpoint}) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl$endpoint"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: from,
      );

      print("Login Successful: ${response.statusCode}");
      print("Login Successful: ${response.body}");
      // Check the response status
      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);
        print(" Successful:");
        return response;
      } else {
        // print(" Failed: ${response.body}");
        return null;
      }
    } catch (e) {
      print("Error during login: $e");
    }
    return null;
  }

  Future<http.Response?> postApiWithToken(
      {Map<String, String>? from,
      String? endpoint,
      String? bearerToken}) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl$endpoint"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer $bearerToken',
        },
        body: from,
      );

      print("Login Successful: ${response.statusCode}");
      print("Login Successful: ${response.body}");
      // Check the response status
      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);
        print(" Successful:");
        return response;
      } else if (response.statusCode == 400) {
        // print(" Failed: ${response.body}");
        return null;
      } else {
        // print(" Failed: ${response.body}");
        return null;
      }
    } catch (e) {
      print("Error during login: $e");
    }
    return null;
  }
}
