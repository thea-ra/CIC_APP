import 'dart:convert';
import 'package:get/get_connect.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  final String baseurl = "https://pre-cic.z1platform.com/api/v4/";
  Future<dynamic> onNetworkRequesting(
      {required String url,
      Map<String, String>? header,
      Map<String, dynamic>? body,
      required METHODE? methode,
      required bool isAuthorize}) async {
    final fullUrl = baseurl + url;
    const token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMjJmMTUwMTg3OTAwOWFhZDBhZDAyNmQ4NzViOTU0NDViZTM3YzQzZGE2Y2Y0NTNhYTZlNWE1YTEzMjQ3NzYxOThjZWMxZTU0MjVkNDRjYzMiLCJpYXQiOjE2NzUwNDE4NDQuNjQ1NjY4LCJuYmYiOjE2NzUwNDE4NDQuNjQ1NjcyLCJleHAiOjE3MDY1Nzc4NDQuNjMzNjA3LCJzdWIiOiI4NTEiLCJzY29wZXMiOlsiKiJdfQ.S8-3Xoo5zpU0qRB3KCZkQGQ61Wjzz4Y3NOaIZTsJKrl1pwUlEFviz5M4kNrwTk8WpTI7myiYk_-99flLWBkEOq6WNSfhMtsCavQUMqXniaUKfDKLry1dioO8lBbGUA_3e24GXSXIe2syzxoyZJnQpdrSFv_UQdKn0TJAi-x60l7DVj37NhpEe2TCd3w-DUEWvBL3OimQwftP250VAO8SQ1apV-mVaW5KR_xdXz1W-uhSzVETB3aTDLiTIcO4e59arOFYlIibVgya4GLG5AWOmPSXW8CV7se0sNGnQyADZoP8fa-dNMjdU921zeH2BvOyEtxYSo8hlL92VIHYndKgGsx_KeqVqZSoHnAFzJ0PZKM0NBC4jro7j-JPzAUfFupBC0VMoHYxlOt7ZMQCHrDDgNXTUHk3TrDFccaFVCz7e_8TvfSFU8KBgFg3I8nanJMUwWjiCvqsdNS8pFX8IYxhXJFcsQW2TWj1JhUMmWwdYx1kzublJgMOGxD4FdOe_kOvnd6WIXWm1XMZQU6Azo2jaIFVK-74BU0sNGy3plPkf9RUBka5wAAq6vd_uif_3XkSCsCc59cPy_IJgh-tJ7C8mm4Q03PmDksqWMqRRdH9KqTrhl4MN0FfbDN_7EJ6dddQwoOnIs08B9pVTh2evNPPk2aZyt2odlWgQfUH2ZJR-Fs';
    // final token = await LocalStorage.getStringValue(key: 'token');
    Map<String, String> defaultHeader = isAuthorize
        ? {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          }
        : {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          };
    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header ?? defaultHeader);
          return _returnResponse(response);
        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        case METHODE.delete:
          final response = await delete(fullUrl, headers: defaultHeader);
          return _returnResponse(response);
        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 201:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 202:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 404:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 400:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 401:
      case 403:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 500:
        break;
      default:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString ?? "")));
    }
  }
}
