class Endpoints {
  // Endpoints._();

  // base url  
  // static const String baseUrl = "https://reqres.in/api";
  static const String baseUrl = "https://1a07-2402-3a80-b43-21f7-a516-2a2c-44b3-6b4a.in.ngrok.io/api/v1/";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String users = '/users';

  static const String registerUser = "/auth/register";
  static const String loginUser = "/auth/login";
  static const String checkApproval = "/auth/approved";
  static const String checkDenied = "/auth/denied";
  


}
