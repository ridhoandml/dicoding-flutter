import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:feature_tv/domain/entities/tv.dart';
import 'package:feature_tv/domain/entities/tv_detail.dart';

abstract class TVRepository {
  Future<Either<Failure, List<TV>>> getOnTheAirTVShows();
  Future<Either<Failure, List<TV>>> getPopularTVShows();
  Future<Either<Failure, List<TV>>> getTopRatedTVShows();
  Future<Either<Failure, TVDetail>> getTVShowDetail(int id);
  Future<Either<Failure, List<TV>>> getTVShowsRecommendation(int id);
  Future<Either<Failure, List<TV>>> searchTVShows(String query);
  Future<Either<Failure, String>> saveWatchlistTV(TVDetail tv);
  Future<Either<Failure, String>> removeWatchlistTV(TVDetail tv);
  Future<bool> isAddedToWatchlistTV(int id);
  Future<Either<Failure, List<TV>>> getWatchlistTVShows();
}
