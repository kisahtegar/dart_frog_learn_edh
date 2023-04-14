// ignore_for_file: avoid_print

import 'package:dart_frog/dart_frog.dart';

// Dynamic URL
Future<Response> onRequest(RequestContext context, String name) async {
  // print(context.request.method);
  // print('URI: ${context.request.uri}');
  // print('URL: ${context.request.url}');
  // print('Body: ${await context.request.body()}');

  print('Request is handeled');

  return Response(body: 'Hello $name!');
}
