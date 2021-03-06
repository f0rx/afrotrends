import 'package:afrotrends/features/data/remote/data_sources/post_datasource.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PostRepository {
  final DataConnectionChecker _connectionChecker;
  final PostDataSource _postDataSource;

  PostRepository({DataConnectionChecker connectionChecker, PostDataSource dataSource})
      : assert(connectionChecker != null),
        assert(dataSource != null),
        _connectionChecker = connectionChecker,
        _postDataSource = dataSource;

  Future<Posts> fetchLatestPosts({QueryBuilder query}) async {
    return await _postDataSource.fetchLatestPosts(query: query);
  }

  Future<Posts> fetchRelatedPosts(QueryBuilder query) async {
    return await _postDataSource.fetchLatestPosts(query: query);
  }

  Future<Post> fetchSinglePost(String id, {QueryBuilder query}) async {
    return await _postDataSource.fetchSingleton(id, query: query);
  }

  Future<Posts> fetchOlderPosts({QueryBuilder query}) async {
    return await _postDataSource.fetchOlderPosts(query: query);
  }
}
