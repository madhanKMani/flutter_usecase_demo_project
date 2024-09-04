import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../utils/graphql_service.dart';

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  return GraphQLService().initClient();
});

// Add other app-wide providers here, e.g., shared preferences, analytics, etc.
