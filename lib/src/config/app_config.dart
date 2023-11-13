import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  /*--------------------------------- HOST --------------------------------- */
  static String baseUrl = dotenv.get('BASE_URL');
  static String apiUrl = '$baseUrl/api';

  /*------------------------------- ENDPOINT ------------------------------- */
  static String signIn = dotenv.get('SIGN_IN');
}
