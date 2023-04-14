// ignore_for_file: avoid_print

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Code before request is handled.
    print('Saving name(${context.request.url}) to database.');
    final response = await handler(context);

    // Code after request is handled.
    print('Making new response');
    final newResponse =
        response.copyWith(body: '${await response.body()}, How are you ?');

    return newResponse;
  };
}
