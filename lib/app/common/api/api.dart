import 'package:campusconnect/app/common/api/dio_client.dart';
import 'package:campusconnect/app/common/config/config.dart';
import 'package:dio/dio.dart';

class NetworkApi {
    final DioClient dioClient;

    NetworkApi({required this.dioClient});

    Future<Response> post({required dynamic data,required String url})async{
        try {
           final Response response = await dioClient.post(
             url,
             data:data
           );
        return response;
      } catch (e) {
        rethrow;
      }
    }
    Future<CustomResponse> get({required String url})async{
        try {
           final Response response = await dioClient.get(url);
           final res = CustomResponse(response: response);
           return res;
        } on DioError catch (e) {
          final res = CustomResponse(error: e);
          return res;
        }
    }

    

    Future<Response> addUserApi(String name, String job) async {
      try {
        

        final Response response = await dioClient.post(
          Endpoints.users,
          data: {
            'name': name,
            'job': job,
          },
        );
        // CustomResponse cresponse = CustomResponse();
        return response;
      } catch (e) {
        rethrow;
      }
    }

    // Future<Response> getUsersApi() async {
    //   try {
    //     final Response response = await dioClient.get(Endpoints.users);
    //     return response;
    //   } catch (e) {
    //     rethrow;
    //   }
    // }

    Future<Response> updateUserApi(int id, String name, String job) async {
      try {
        final Response response = await dioClient.put(
          '${Endpoints.users}/$id',
          data: {
            'name': name,
            'job': job,
          },
        );
        return response;
      } catch (e) {
        rethrow;
      }
    }

    Future<void> deleteUserApi(int id) async {
      try {
        await dioClient.delete('${Endpoints.users}/$id');
      } catch (e) {
        rethrow;
      }
    }
}





class CustomResponse {
   Response? response;
   DioError? error ;

   CustomResponse({this.error,this.response});

}
