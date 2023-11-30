import 'dart:io';

import 'package:bullet_in_api/api.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final categories = await context.read<NewsDataSource>().getCategories();
  final response = CategoriesResponse(categories: categories);
  return Response.json(body: response);
}
