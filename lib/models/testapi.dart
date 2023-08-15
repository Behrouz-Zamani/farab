import 'package:http/http.dart' as http;


 void main() {

  
  
}


void testhttp() async
{
    var url=Uri.parse("https://sasansafari.com/flutter/api.php?access_key=flutter123456");
    var response= await http.get(url);
    print(response.body);
}