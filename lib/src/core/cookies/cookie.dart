import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:wms_v2/src/core/token/token.dart';

class Cookie {
  Cookie._();

  static Map<String, dynamic>? _getCookie(List<String> cookieArray) {
    // Temukan cookie yang berisi data refreshToken.
    String? refreshTokenCookie;
    for (String cookie in cookieArray) {
      if (cookie.contains('refreshToken')) {
        refreshTokenCookie = cookie;
        break;
      }
    }

    // Jika cookie refreshToken tidak ditemukan, kembalikan null.
    if (refreshTokenCookie == null) {
      return null;
    }

    // Split cookie menjadi dua bagian, yaitu bagian yang berisi refreshToken dan bagian yang berisi informasi lainnya.
    List<String> cookieParts = refreshTokenCookie.split(';');

    // Ambil nilai refreshToken dari bagian pertama cookie.
    String refreshToken = cookieParts[0].split('=')[1];

    // Ambil nilai Expires dari bagian kedua cookie.
    String expires = cookieParts[3].split('=')[1];

    // Kembalikan nilai refreshToken dan Expires.
    return {
      'refreshToken': refreshToken,
      'expires': expires,
    };
  }

  static Future<Response> saveCookieToLocal(Response response) async {
    Map<String, dynamic>? result = _getCookie(response.headers['Set-Cookie']!);

    if (result != null) {
      String refreshToken = result['refreshToken']!;
      DateTime expires =
          DateFormat('EEE, dd MMM yyyy HH:mm:ss zzz').parse(result['expires']!);

      // Save Refresh Token to Local Storage
      await Token.saveRefreshTokenToLocalStorage(refreshToken);

      // Save Expires Refresh Token to Local Storage
      await Token.saveExpiresToLocalStorage(expires.toIso8601String());
    }
    return response;
  }

  static Future<void> deleteCookieOnLocal() async {
    await Token.deleteRefreshTokenOnLocalStorage();
    await Token.deleteExpiresOnLocalStorage();
  }
}
