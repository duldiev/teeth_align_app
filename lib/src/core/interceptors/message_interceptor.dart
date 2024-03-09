import 'package:dio/dio.dart';
import 'package:teeth_align_app/src/core/services/toast.dart';

class MessageInterceptor extends Interceptor {
  final String _messageText = 'message';

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String? message = _parseMessage(err.response);
    if (message != null) Toast.show(message, ToastType.danger);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    String? message = _parseMessage(response);
    if (message != null) Toast.show(message, ToastType.success);
    super.onResponse(response, handler);
  }

  String? _parseMessage(Response? response) {
    final statusCode = response?.statusCode ?? -1;

    if (statusCode == 502) return 'Server not responding';
    if (statusCode == 200) return null;
    if (response?.data == null) return null;
    if (response?.data?.runtimeType == List) return null;
    if (response?.data.toString().isEmpty == true) return null;
    if (response?.data?[_messageText] == null) return null;
    if (response?.data?[_messageText].runtimeType != String) return null;

    String message = response!.data?[_messageText] ?? '';

    if (statusCode == 401) {
      return null;
    }

    return message.isNotEmpty ? message : null;
  }
}
