import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:repository_get_app/resource/token/token.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@riverpod
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  final httpLink = HttpLink(
    'https://api.github.com/graphql',
  );

  final authLink = AuthLink(getToken: () async => Token.getRepositoryKey);

  final link = authLink.concat(httpLink);

  final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  );

  return client;
}
