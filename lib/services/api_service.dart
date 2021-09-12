import 'package:http/http.dart' as http;
import 'package:skid_assessment/models/order_status.dart';

class ApiService {

  static const String URL = "https://dev-api.skidfintech.com/accounts/test-data/";

  Future<OrderStatus?> getAllOrderStatus() async {
    try {
      final response = await http.get(Uri.parse(URL));
      if(response.statusCode == 200) {
        final OrderStatus user = orderStatusFromJson(response.body);
        return user;
      }
    } catch (e) {
      return null;
    }
  }

}
