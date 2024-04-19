import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SearchRepoInfo {
  factory Variables$Query$SearchRepoInfo({
    required String query,
    required int first,
    required String after,
  }) =>
      Variables$Query$SearchRepoInfo._({
        r'query': query,
        r'first': first,
        r'after': after,
      });

  Variables$Query$SearchRepoInfo._(this._$data);

  factory Variables$Query$SearchRepoInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    final l$after = data['after'];
    result$data['after'] = (l$after as String);
    return Variables$Query$SearchRepoInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  int get first => (_$data['first'] as int);

  String get after => (_$data['after'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$first = first;
    result$data['first'] = l$first;
    final l$after = after;
    result$data['after'] = l$after;
    return result$data;
  }

  CopyWith$Variables$Query$SearchRepoInfo<Variables$Query$SearchRepoInfo>
      get copyWith => CopyWith$Variables$Query$SearchRepoInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchRepoInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      l$query,
      l$first,
      l$after,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchRepoInfo<TRes> {
  factory CopyWith$Variables$Query$SearchRepoInfo(
    Variables$Query$SearchRepoInfo instance,
    TRes Function(Variables$Query$SearchRepoInfo) then,
  ) = _CopyWithImpl$Variables$Query$SearchRepoInfo;

  factory CopyWith$Variables$Query$SearchRepoInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchRepoInfo;

  TRes call({
    String? query,
    int? first,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$SearchRepoInfo<TRes>
    implements CopyWith$Variables$Query$SearchRepoInfo<TRes> {
  _CopyWithImpl$Variables$Query$SearchRepoInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchRepoInfo _instance;

  final TRes Function(Variables$Query$SearchRepoInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$SearchRepoInfo._({
        ..._instance._$data,
        if (query != _undefined && query != null) 'query': (query as String),
        if (first != _undefined && first != null) 'first': (first as int),
        if (after != _undefined && after != null) 'after': (after as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchRepoInfo<TRes>
    implements CopyWith$Variables$Query$SearchRepoInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchRepoInfo(this._res);

  TRes _res;

  call({
    String? query,
    int? first,
    String? after,
  }) =>
      _res;
}

class Query$SearchRepoInfo {
  Query$SearchRepoInfo({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$SearchRepoInfo.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo(
      search: Query$SearchRepoInfo$search.fromJson(
          (l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchRepoInfo$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo on Query$SearchRepoInfo {
  CopyWith$Query$SearchRepoInfo<Query$SearchRepoInfo> get copyWith =>
      CopyWith$Query$SearchRepoInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRepoInfo<TRes> {
  factory CopyWith$Query$SearchRepoInfo(
    Query$SearchRepoInfo instance,
    TRes Function(Query$SearchRepoInfo) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo;

  factory CopyWith$Query$SearchRepoInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo;

  TRes call({
    Query$SearchRepoInfo$search? search,
    String? $__typename,
  });
  CopyWith$Query$SearchRepoInfo$search<TRes> get search;
}

class _CopyWithImpl$Query$SearchRepoInfo<TRes>
    implements CopyWith$Query$SearchRepoInfo<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo _instance;

  final TRes Function(Query$SearchRepoInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$SearchRepoInfo$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchRepoInfo$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$SearchRepoInfo$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$SearchRepoInfo<TRes>
    implements CopyWith$Query$SearchRepoInfo<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo(this._res);

  TRes _res;

  call({
    Query$SearchRepoInfo$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchRepoInfo$search<TRes> get search =>
      CopyWith$Query$SearchRepoInfo$search.stub(_res);
}

const documentNodeQuerySearchRepoInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchRepoInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'REPOSITORY')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'cursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'Repository'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stargazerCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'owner'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'login'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'avatarUrl'),
                            alias: null,
                            arguments: [
                              ArgumentNode(
                                name: NameNode(value: 'size'),
                                value: IntValueNode(value: '100'),
                              )
                            ],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchRepoInfo _parserFn$Query$SearchRepoInfo(
        Map<String, dynamic> data) =>
    Query$SearchRepoInfo.fromJson(data);
typedef OnQueryComplete$Query$SearchRepoInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchRepoInfo?,
);

class Options$Query$SearchRepoInfo
    extends graphql.QueryOptions<Query$SearchRepoInfo> {
  Options$Query$SearchRepoInfo({
    String? operationName,
    required Variables$Query$SearchRepoInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchRepoInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchRepoInfo? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$SearchRepoInfo(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchRepoInfo,
          parserFn: _parserFn$Query$SearchRepoInfo,
        );

  final OnQueryComplete$Query$SearchRepoInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchRepoInfo
    extends graphql.WatchQueryOptions<Query$SearchRepoInfo> {
  WatchOptions$Query$SearchRepoInfo({
    String? operationName,
    required Variables$Query$SearchRepoInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchRepoInfo? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearchRepoInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchRepoInfo,
        );
}

class FetchMoreOptions$Query$SearchRepoInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchRepoInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchRepoInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchRepoInfo,
        );
}

extension ClientExtension$Query$SearchRepoInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchRepoInfo>> query$SearchRepoInfo(
          Options$Query$SearchRepoInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchRepoInfo> watchQuery$SearchRepoInfo(
          WatchOptions$Query$SearchRepoInfo options) =>
      this.watchQuery(options);
  void writeQuery$SearchRepoInfo({
    required Query$SearchRepoInfo data,
    required Variables$Query$SearchRepoInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchRepoInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchRepoInfo? readQuery$SearchRepoInfo({
    required Variables$Query$SearchRepoInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchRepoInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchRepoInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchRepoInfo> useQuery$SearchRepoInfo(
        Options$Query$SearchRepoInfo options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SearchRepoInfo> useWatchQuery$SearchRepoInfo(
        WatchOptions$Query$SearchRepoInfo options) =>
    graphql_flutter.useWatchQuery(options);

class Query$SearchRepoInfo$Widget
    extends graphql_flutter.Query<Query$SearchRepoInfo> {
  Query$SearchRepoInfo$Widget({
    widgets.Key? key,
    required Options$Query$SearchRepoInfo options,
    required graphql_flutter.QueryBuilder<Query$SearchRepoInfo> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SearchRepoInfo$search {
  Query$SearchRepoInfo$search({
    this.edges,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$SearchRepoInfo$search.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchRepoInfo$search$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchRepoInfo$search$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search
    on Query$SearchRepoInfo$search {
  CopyWith$Query$SearchRepoInfo$search<Query$SearchRepoInfo$search>
      get copyWith => CopyWith$Query$SearchRepoInfo$search(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search(
    Query$SearchRepoInfo$search instance,
    TRes Function(Query$SearchRepoInfo$search) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search;

  factory CopyWith$Query$SearchRepoInfo$search.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search;

  TRes call({
    List<Query$SearchRepoInfo$search$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchRepoInfo$search$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchRepoInfo$search$edges<
                      Query$SearchRepoInfo$search$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchRepoInfo$search<TRes>
    implements CopyWith$Query$SearchRepoInfo$search<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search _instance;

  final TRes Function(Query$SearchRepoInfo$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo$search(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchRepoInfo$search$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$SearchRepoInfo$search$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchRepoInfo$search$edges<
                          Query$SearchRepoInfo$search$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchRepoInfo$search$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search<TRes>
    implements CopyWith$Query$SearchRepoInfo$search<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search(this._res);

  TRes _res;

  call({
    List<Query$SearchRepoInfo$search$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$SearchRepoInfo$search$edges {
  Query$SearchRepoInfo$search$edges({
    required this.cursor,
    this.node,
    this.$__typename = 'SearchResultItemEdge',
  });

  factory Query$SearchRepoInfo$search$edges.fromJson(
      Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges(
      cursor: (l$cursor as String),
      node: l$node == null
          ? null
          : Query$SearchRepoInfo$search$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Query$SearchRepoInfo$search$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges
    on Query$SearchRepoInfo$search$edges {
  CopyWith$Query$SearchRepoInfo$search$edges<Query$SearchRepoInfo$search$edges>
      get copyWith => CopyWith$Query$SearchRepoInfo$search$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges(
    Query$SearchRepoInfo$search$edges instance,
    TRes Function(Query$SearchRepoInfo$search$edges) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges;

  factory CopyWith$Query$SearchRepoInfo$search$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges;

  TRes call({
    String? cursor,
    Query$SearchRepoInfo$search$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo$search$edges(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchRepoInfo$search$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchRepoInfo$search$edges$node.stub(_then(_instance))
        : CopyWith$Query$SearchRepoInfo$search$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges(this._res);

  TRes _res;

  call({
    String? cursor,
    Query$SearchRepoInfo$search$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> get node =>
      CopyWith$Query$SearchRepoInfo$search$edges$node.stub(_res);
}

class Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node({required this.$__typename});

  factory Query$SearchRepoInfo$search$edges$node.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Repository":
        return Query$SearchRepoInfo$search$edges$node$$Repository.fromJson(
            json);

      case "App":
        return Query$SearchRepoInfo$search$edges$node$$App.fromJson(json);

      case "Discussion":
        return Query$SearchRepoInfo$search$edges$node$$Discussion.fromJson(
            json);

      case "Issue":
        return Query$SearchRepoInfo$search$edges$node$$Issue.fromJson(json);

      case "MarketplaceListing":
        return Query$SearchRepoInfo$search$edges$node$$MarketplaceListing
            .fromJson(json);

      case "Organization":
        return Query$SearchRepoInfo$search$edges$node$$Organization.fromJson(
            json);

      case "PullRequest":
        return Query$SearchRepoInfo$search$edges$node$$PullRequest.fromJson(
            json);

      case "User":
        return Query$SearchRepoInfo$search$edges$node$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$SearchRepoInfo$search$edges$node(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node
    on Query$SearchRepoInfo$search$edges$node {
  CopyWith$Query$SearchRepoInfo$search$edges$node<
          Query$SearchRepoInfo$search$edges$node>
      get copyWith => CopyWith$Query$SearchRepoInfo$search$edges$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$SearchRepoInfo$search$edges$node$$Repository)
        repository,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$App) app,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$Discussion)
        discussion,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$Issue) issue,
    required _T Function(
            Query$SearchRepoInfo$search$edges$node$$MarketplaceListing)
        marketplaceListing,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$Organization)
        organization,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$PullRequest)
        pullRequest,
    required _T Function(Query$SearchRepoInfo$search$edges$node$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        return repository(
            this as Query$SearchRepoInfo$search$edges$node$$Repository);

      case "App":
        return app(this as Query$SearchRepoInfo$search$edges$node$$App);

      case "Discussion":
        return discussion(
            this as Query$SearchRepoInfo$search$edges$node$$Discussion);

      case "Issue":
        return issue(this as Query$SearchRepoInfo$search$edges$node$$Issue);

      case "MarketplaceListing":
        return marketplaceListing(
            this as Query$SearchRepoInfo$search$edges$node$$MarketplaceListing);

      case "Organization":
        return organization(
            this as Query$SearchRepoInfo$search$edges$node$$Organization);

      case "PullRequest":
        return pullRequest(
            this as Query$SearchRepoInfo$search$edges$node$$PullRequest);

      case "User":
        return user(this as Query$SearchRepoInfo$search$edges$node$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$SearchRepoInfo$search$edges$node$$Repository)? repository,
    _T Function(Query$SearchRepoInfo$search$edges$node$$App)? app,
    _T Function(Query$SearchRepoInfo$search$edges$node$$Discussion)? discussion,
    _T Function(Query$SearchRepoInfo$search$edges$node$$Issue)? issue,
    _T Function(Query$SearchRepoInfo$search$edges$node$$MarketplaceListing)?
        marketplaceListing,
    _T Function(Query$SearchRepoInfo$search$edges$node$$Organization)?
        organization,
    _T Function(Query$SearchRepoInfo$search$edges$node$$PullRequest)?
        pullRequest,
    _T Function(Query$SearchRepoInfo$search$edges$node$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        if (repository != null) {
          return repository(
              this as Query$SearchRepoInfo$search$edges$node$$Repository);
        } else {
          return orElse();
        }

      case "App":
        if (app != null) {
          return app(this as Query$SearchRepoInfo$search$edges$node$$App);
        } else {
          return orElse();
        }

      case "Discussion":
        if (discussion != null) {
          return discussion(
              this as Query$SearchRepoInfo$search$edges$node$$Discussion);
        } else {
          return orElse();
        }

      case "Issue":
        if (issue != null) {
          return issue(this as Query$SearchRepoInfo$search$edges$node$$Issue);
        } else {
          return orElse();
        }

      case "MarketplaceListing":
        if (marketplaceListing != null) {
          return marketplaceListing(this
              as Query$SearchRepoInfo$search$edges$node$$MarketplaceListing);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(
              this as Query$SearchRepoInfo$search$edges$node$$Organization);
        } else {
          return orElse();
        }

      case "PullRequest":
        if (pullRequest != null) {
          return pullRequest(
              this as Query$SearchRepoInfo$search$edges$node$$PullRequest);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$SearchRepoInfo$search$edges$node$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node(
    Query$SearchRepoInfo$search$edges$node instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$Repository
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$Repository({
    required this.id,
    required this.name,
    required this.stargazerCount,
    required this.updatedAt,
    this.description,
    required this.owner,
    this.$__typename = 'Repository',
  });

  factory Query$SearchRepoInfo$search$edges$node$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$stargazerCount = json['stargazerCount'];
    final l$updatedAt = json['updatedAt'];
    final l$description = json['description'];
    final l$owner = json['owner'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Repository(
      id: (l$id as String),
      name: (l$name as String),
      stargazerCount: (l$stargazerCount as int),
      updatedAt: (l$updatedAt as String),
      description: (l$description as String?),
      owner: Query$SearchRepoInfo$search$edges$node$$Repository$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int stargazerCount;

  final String updatedAt;

  final String? description;

  final Query$SearchRepoInfo$search$edges$node$$Repository$owner owner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$stargazerCount = stargazerCount;
    _resultData['stargazerCount'] = l$stargazerCount;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$stargazerCount = stargazerCount;
    final l$updatedAt = updatedAt;
    final l$description = description;
    final l$owner = owner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$stargazerCount,
      l$updatedAt,
      l$description,
      l$owner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$Repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$stargazerCount = stargazerCount;
    final lOther$stargazerCount = other.stargazerCount;
    if (l$stargazerCount != lOther$stargazerCount) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Repository
    on Query$SearchRepoInfo$search$edges$node$$Repository {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository<
          Query$SearchRepoInfo$search$edges$node$$Repository>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository(
    Query$SearchRepoInfo$search$edges$node$$Repository instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$Repository) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository;

  TRes call({
    String? id,
    String? name,
    int? stargazerCount,
    String? updatedAt,
    String? description,
    Query$SearchRepoInfo$search$edges$node$$Repository$owner? owner,
    String? $__typename,
  });
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<TRes>
      get owner;
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Repository _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? stargazerCount = _undefined,
    Object? updatedAt = _undefined,
    Object? description = _undefined,
    Object? owner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        stargazerCount: stargazerCount == _undefined || stargazerCount == null
            ? _instance.stargazerCount
            : (stargazerCount as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner
                as Query$SearchRepoInfo$search$edges$node$$Repository$owner),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<TRes>
      get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? stargazerCount,
    String? updatedAt,
    String? description,
    Query$SearchRepoInfo$search$edges$node$$Repository$owner? owner,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<TRes>
      get owner =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner
              .stub(_res);
}

class Query$SearchRepoInfo$search$edges$node$$Repository$owner {
  Query$SearchRepoInfo$search$edges$node$$Repository$owner({
    required this.login,
    required this.avatarUrl,
    required this.$__typename,
  });

  factory Query$SearchRepoInfo$search$edges$node$$Repository$owner.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Organization":
        return Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization
            .fromJson(json);

      case "User":
        return Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User
            .fromJson(json);

      default:
        final l$login = json['login'];
        final l$avatarUrl = json['avatarUrl'];
        final l$$__typename = json['__typename'];
        return Query$SearchRepoInfo$search$edges$node$$Repository$owner(
          login: (l$login as String),
          avatarUrl: (l$avatarUrl as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String login;

  final String avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$Repository$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Repository$owner
    on Query$SearchRepoInfo$search$edges$node$$Repository$owner {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
          Query$SearchRepoInfo$search$edges$node$$Repository$owner>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization)
        organization,
    required _T Function(
            Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User)
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Organization":
        return organization(this
            as Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization);

      case "User":
        return user(this
            as Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization)?
        organization,
    _T Function(Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User)?
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Organization":
        if (organization != null) {
          return organization(this
              as Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this
              as Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner(
    Query$SearchRepoInfo$search$edges$node$$Repository$owner instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$Repository$owner)
        then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
            TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Repository$owner _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$Repository$owner)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Repository$owner(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner<
            TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner(
      this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization
    implements Query$SearchRepoInfo$search$edges$node$$Repository$owner {
  Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'Organization',
  });

  factory Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
      login: (l$login as String),
      avatarUrl: (l$avatarUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization
    on Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
          Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
    Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization
        instance,
    TRes Function(
            Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization)
        then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
            TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization
      _instance;

  final TRes Function(
          Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization<
            TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$Organization(
      this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User
    implements Query$SearchRepoInfo$search$edges$node$$Repository$owner {
  Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
      login: (l$login as String),
      avatarUrl: (l$avatarUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User
    on Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
          Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
    Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User instance,
    TRes Function(
            Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User)
        then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
            TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User
      _instance;

  final TRes Function(
      Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User<
            TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Repository$owner$$User(
      this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchRepoInfo$search$edges$node$$App
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$App({this.$__typename = 'App'});

  factory Query$SearchRepoInfo$search$edges$node$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$App(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$App) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$App
    on Query$SearchRepoInfo$search$edges$node$$App {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$App<
          Query$SearchRepoInfo$search$edges$node$$App>
      get copyWith => CopyWith$Query$SearchRepoInfo$search$edges$node$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$App<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$App(
    Query$SearchRepoInfo$search$edges$node$$App instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$App) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$App;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$App<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$App<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$App(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$App _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$App<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$App<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$Discussion
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$SearchRepoInfo$search$edges$node$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Discussion(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$Discussion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Discussion
    on Query$SearchRepoInfo$search$edges$node$$Discussion {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion<
          Query$SearchRepoInfo$search$edges$node$$Discussion>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion(
    Query$SearchRepoInfo$search$edges$node$$Discussion instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$Discussion) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Discussion;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Discussion<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Discussion(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Discussion _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Discussion<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Discussion<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Discussion(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$Issue
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$Issue({this.$__typename = 'Issue'});

  factory Query$SearchRepoInfo$search$edges$node$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Issue(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$Issue) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Issue
    on Query$SearchRepoInfo$search$edges$node$$Issue {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue<
          Query$SearchRepoInfo$search$edges$node$$Issue>
      get copyWith => CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue(
    Query$SearchRepoInfo$search$edges$node$$Issue instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$Issue) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Issue;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Issue;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Issue(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Issue _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Issue(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$Issue<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Issue(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$MarketplaceListing
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$SearchRepoInfo$search$edges$node$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$SearchRepoInfo$search$edges$node$$MarketplaceListing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing
    on Query$SearchRepoInfo$search$edges$node$$MarketplaceListing {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
          Query$SearchRepoInfo$search$edges$node$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
    Query$SearchRepoInfo$search$edges$node$$MarketplaceListing instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$MarketplaceListing)
        then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
            TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$MarketplaceListing _instance;

  final TRes Function(
      Query$SearchRepoInfo$search$edges$node$$MarketplaceListing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing<
            TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$Organization
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$SearchRepoInfo$search$edges$node$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$Organization(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$Organization
    on Query$SearchRepoInfo$search$edges$node$$Organization {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization<
          Query$SearchRepoInfo$search$edges$node$$Organization>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization(
    Query$SearchRepoInfo$search$edges$node$$Organization instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$Organization) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Organization;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Organization<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$Organization(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$Organization _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$Organization)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Organization<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$Organization<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$Organization(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$PullRequest
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$SearchRepoInfo$search$edges$node$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$PullRequest(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$PullRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$PullRequest
    on Query$SearchRepoInfo$search$edges$node$$PullRequest {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest<
          Query$SearchRepoInfo$search$edges$node$$PullRequest>
      get copyWith =>
          CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest<
    TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest(
    Query$SearchRepoInfo$search$edges$node$$PullRequest instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$PullRequest) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest<TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$PullRequest _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$PullRequest)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest<
        TRes>
    implements
        CopyWith$Query$SearchRepoInfo$search$edges$node$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$PullRequest(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepoInfo$search$edges$node$$User
    implements Query$SearchRepoInfo$search$edges$node {
  Query$SearchRepoInfo$search$edges$node$$User({this.$__typename = 'User'});

  factory Query$SearchRepoInfo$search$edges$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepoInfo$search$edges$node$$User(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepoInfo$search$edges$node$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepoInfo$search$edges$node$$User
    on Query$SearchRepoInfo$search$edges$node$$User {
  CopyWith$Query$SearchRepoInfo$search$edges$node$$User<
          Query$SearchRepoInfo$search$edges$node$$User>
      get copyWith => CopyWith$Query$SearchRepoInfo$search$edges$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepoInfo$search$edges$node$$User<TRes> {
  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$User(
    Query$SearchRepoInfo$search$edges$node$$User instance,
    TRes Function(Query$SearchRepoInfo$search$edges$node$$User) then,
  ) = _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$User;

  factory CopyWith$Query$SearchRepoInfo$search$edges$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$User<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$User<TRes> {
  _CopyWithImpl$Query$SearchRepoInfo$search$edges$node$$User(
    this._instance,
    this._then,
  );

  final Query$SearchRepoInfo$search$edges$node$$User _instance;

  final TRes Function(Query$SearchRepoInfo$search$edges$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepoInfo$search$edges$node$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$User<TRes>
    implements CopyWith$Query$SearchRepoInfo$search$edges$node$$User<TRes> {
  _CopyWithStubImpl$Query$SearchRepoInfo$search$edges$node$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
