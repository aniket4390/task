import 'package:http/http.dart' as http;
class HttpService {
   get() async {
      http.Response response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
      if (response.statusCode == 200)  return response.body;
      else throw Exception('Failed to load data');
  }
}