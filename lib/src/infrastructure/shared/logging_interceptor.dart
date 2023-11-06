import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// [LoggingInterceptor] is used to log network requests and responses.
/// It's best to add [LoggingInterceptor] to the tail of the interceptor queue,
/// otherwise the changes made in the interceptors behind it will not logged.
/// This is because the execution of interceptors is in the order of addition.
class LoggingInterceptor extends Interceptor {
  final logger = Logger();
  final _jsonEncoder = const JsonEncoder.withIndent('  ');

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    logger.d(
      _getRequestLog(
        options,
        handler,
      ),
    );
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    logger.d(_getResponseLog(response));
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
      _getErrorLog(
        err,
        handler,
      ),
    );
    handler.next(err);
  }

  String _getRequestLog(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    return "*** Request ***\n"
        "${_getKeyValueLog('uri', options.uri)}\n"
        "${_getKeyValueLog('method', options.method)}\n"
        // "${_getKeyValueLog('responseType', options.responseType.toString())}, "
        // "${_getKeyValueLog('followRedirects', options.followRedirects)}, "
        // "${_getKeyValueLog('persistentConnection', options.persistentConnection)}, "
        // "${_getKeyValueLog('connectTimeout', options.connectTimeout)}, "
        // "${_getKeyValueLog('sendTimeout', options.sendTimeout)}, "
        // "${_getKeyValueLog('receiveTimeout', options.receiveTimeout)}, "
        // "${_getKeyValueLog('receiveDataWhenStatusError', options.receiveDataWhenStatusError)}, "
        // "${_getKeyValueLog('extra', options.extra)}\n"
        "headers:\n"
        "${_getKeyValueMapLog(options.headers)}\n"
        "data:\n"
        "${_getBody(options.data, options.contentType)}";
  }

  String _getResponseLog(Response response) {
    return "*** Response ***\n"
        "${_getKeyValueLog('uri', response.requestOptions.uri)}\n"
        "${_getKeyValueLog('statusCode', response.statusCode)}\n"
        "${_getResponseHeadersLog(response.headers)}"
        "data:\n"
        "${_getBody(response.data, response.requestOptions.contentType)}";
  }

  String _getErrorLog(DioException err, ErrorInterceptorHandler handler) {
    return "*** DioException ***\n"
        "${_getKeyValueLog('uri', err.requestOptions.uri)}\n"
        "${_getKeyValueLog('type', err.type)}\n"
        "${_getKeyValueLog('error', err.error)}\n"
        "${_getKeyValueLog('response', err.response)}";
  }

  /// Whether to pretty print a JSON or return as regular String
  String _getBody(dynamic data, String? contentType) {
    final type = contentType?.toLowerCase();
    if (type?.contains('application/json') == true) {
      // Since the JSON could be a Map or List
      dynamic jsonBody;
      if (data is String) {
        jsonBody = jsonDecode(data);
      } else {
        jsonBody = data;
      }
      return _jsonEncoder.convert(jsonDecode(jsonEncode(jsonBody)));
    } else if (type?.contains('application/x-www-form-urlencoded') == true) {
      return _jsonEncoder.convert(jsonDecode(jsonEncode(data)));
    } else if (type?.contains("multipart/form-data") == true) {
      return _jsonEncoder.convert(_formDataToJson(data));
    } else {
      return data.toString();
    }
  }

  Map<String, dynamic> _formDataToJson(FormData formData) {
    final map = <String, dynamic>{};
    for (final entry in formData.fields) {
      map[entry.key] = entry.value;
    }
    for (final file in formData.files) {
      var responseString = "[application/octet-stream; ";
      if (file.value.filename != null) {
        responseString += "filename=${file.value.filename}; ";
      }
      responseString += "length=${file.value.length}]";
      map[file.key] = responseString;
    }
    return map;
  }

  String _getKeyValueMapLog(Map<String, dynamic> map) {
    List<String> interResult = [];
    map.forEach(
      (key, v) => interResult.add(_getKeyValueLog(' $key', v)),
    );
    return interResult.join("\n");
  }

  String _getResponseHeadersLog(Headers headers) {
    var result = "headers:\n";
    headers.forEach((key, v) =>
        result = result + _getKeyValueLog(' $key', "${v.join('\r\n\t')}\n"));
    return result;
  }

  String _getKeyValueLog(String key, Object? v) {
    return '$key: $v';
  }
}
