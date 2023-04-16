// ignore_for_file: public_member_api_docs, avoid_print

import 'package:dart_frog/dart_frog.dart';

Middleware greetingProvider() {
  // A lot of codes

  return provider<String>(
    (context) => 'How are you',
  );
}

Middleware asyncGreetingProvider() {
  return provider<Future<String>>(
    (context) async {
      print('Async Greeting Provider');

      // doing async process
      return 'Hello';
    },
  );
}

String? result;
// This function better because only call 1 time and save into result
Middleware cacheAsyncGreetingProvider() {
  return provider<Future<String>>(
    (context) async {
      if (result == null) {
        print('Cache Async Greeting Provider');

        // doing async process
        result = 'Hello';
      }
      return result!;
    },
  );
}
