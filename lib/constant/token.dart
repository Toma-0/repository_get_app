// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'token.g.dart';

@envied
abstract class Token {
  @EnviedField(varName: 'GITHUB_ACTIONS_TOKEN', obfuscate: true)
  static final String githubActionsKey = _Token.githubActionsKey;

  @EnviedField(varName: 'GET_REPOSITORY_TOKEN', obfuscate: true)
  static final String getRepositoryKey = _Token.getRepositoryKey;
}
