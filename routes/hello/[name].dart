// ignore_for_file: avoid_print

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_learn_edh/request_context_extension.dart';

// Dynamic URL
Future<Response> onRequest(RequestContext context, String name) async {
  // print(context.request.method);
  // print('URI: ${context.request.uri}');
  // print('URL: ${context.request.url}');
  // print('Body: ${await context.request.body()}');

  print('Request is handeled');

  // final greeting = await context.read<Future<String>>();
  final greeting = await context.readAsync<String>();

  return Response(body: '$greeting $name!');
}
