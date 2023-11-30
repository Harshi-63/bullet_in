import 'package:bullet_in_api/api.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(userProvider())
      .use(newsDataSourceProvider());
}
