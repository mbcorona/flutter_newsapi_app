import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'NEWSAPIKEY')
  static const String newsApiKey = _Env.newsApiKey;
}
