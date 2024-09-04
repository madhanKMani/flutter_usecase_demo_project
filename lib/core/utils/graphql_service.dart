import 'dart:async';
import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  GraphQLClient initClient() {
    final HttpLink httpLink = HttpLink(
      'https://api.yourgraphqlserver.com/graphql',
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <Your Auth Token>',
    );

    final Link link = authLink.concat(httpLink);

    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: link,
    );
  }
}

Future<T> handleApiCall<T>(Future<T> Function() apiCall) async {
  try {
    return await apiCall();
  } on SocketException {
    throw 'No Internet connection';
  } on TimeoutException {
    throw 'Connection timed out';
  } on FormatException {
    throw 'Invalid response format';
  } on HttpException catch (e) {
    if (e.message.contains('400')) {
      throw 'Invalid data provided';
    } else if (e.message.contains('401')) {
      throw 'Unauthorized access';
    } else if (e.message.contains('403')) {
      throw 'Forbidden';
    } else if (e.message.contains('500')) {
      throw 'Server error';
    } else {
      throw 'Unexpected error occurred';
    }
  } catch (e) {
    throw 'Unexpected error: $e';
  }
}



