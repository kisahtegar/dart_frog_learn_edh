import 'package:dart_frog/dart_frog.dart';

// Dynamic URL
Response onRequest(RequestContext context, String name) {
  return Response(body: 'Hello $name!');
}
