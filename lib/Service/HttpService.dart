//import 'package:get/get_connect/connect.dart';
import 'package:http/http.dart' as http;

class HttpService {//extends GetConnect{
  
  // Future<List<dynamic>> getUser() async{
  //     final response = await get('https://jsonplaceholder.typicode.com/users');
  //     if(response.status.hasError)
  //       return Future.error(response.statusText.toString());
  //     else
  //       return response.body['result'];  
  // }

   get() async {
      try{
        http.Response response = await http.get(
          Uri.parse("https://jsonplaceholder.typicode.com/users"),
          //headers: {"Content-type": "application/json"},
        );
        if (response.statusCode == 200) {
          //print("ok ${response.body}");
          return response.body;// Album.fromJson(jsonDecode(response.body));
        } 
        else {
          throw Exception('Failed to load data');
        }
        print(response);
        return response.body;
      }
      catch(e){
        print("error $e");
      }

  }


}