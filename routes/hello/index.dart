import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_learn_edh/request_context_extension.dart';

Future<Response> onRequest(RequestContext context) async {
  final greeting = await context.readAsync<String>();
  return Response(body: greeting);
}
