import 'package:calipay/components/constants.dart';
import 'package:http/http.dart' as http;

mixin Server {
  Future<dynamic> get() async {
    var data = await http.get(Uri.https(url));
    print(data);
  }
}
