import 'dart:convert';

import 'movie_genre_model.dart';
import 'production_company_model.dart';
import 'production_country_model.dart';
import 'spoken_language_model.dart';

class MovieDetailModel {
  final bool adult;
  final String backdropPath;
  final dynamic belongsToCollection;
  final int budget;
  final List<MovieGenre> genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<ProductionCompanyModel> productionCompanies;
  final List<ProductionCountryModel> productionCountries;
  final DateTime releaseDate;
  final int revenue;
  final int runtime;
  final List<SpokenLanguageModel> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieDetailModel({
    this.adult, 
    this.backdropPath, 
    this.belongsToCollection, 
    this.budget, 
    this.genres, 
    this.homepage, 
    this.id, 
    this.imdbId, 
    this.originalLanguage, 
    this.originalTitle, 
    this.overview, 
    this.popularity, 
    this.posterPath, 
    this.productionCompanies, 
    this.productionCountries, 
    this.releaseDate, 
    this.revenue, 
    this.runtime, 
    this.spokenLanguages, 
    this.status, 
    this.tagline, 
    this.title, 
    this.video, 
    this.voteAverage, 
    this.voteCount
  });

  factory MovieDetailModel.fromJson(String str) => MovieDetailModel.fromMap(json.decode(str));

  factory MovieDetailModel.fromMap(Map<String, dynamic> json) => MovieDetailModel(
    adult: json['adult'],
    backdropPath: json['backdrop_path'],
    belongsToCollection: json['belongs_to_collection'],
    budget: json['budget'],
    genres: List<MovieGenre>.from(json['genres'].map((genre) => MovieGenre.fromMap(genre))),
    homepage: json['homepage'],
    id: json['id'],
    imdbId: json['imdb_id'],
    originalLanguage: json['original_language'],
    originalTitle: json['original_title'],
    overview: json['overview'],
    popularity: json['popularity'].toDouble(),
    posterPath: json['poster_path'],
    productionCompanies: List<ProductionCompanyModel>.from(json['production_companies'].map((prod) => ProductionCompanyModel.fromMap(prod))),
    productionCountries: List<ProductionCountryModel>.from(json['production_countries'].map((prod) => ProductionCountryModel.fromMap(prod))),
    releaseDate: DateTime.tryParse(json['release_date']) ?? DateTime(1,1,1),
    revenue: json['revenue'],
    runtime: json['runtime'],
    spokenLanguages: List<SpokenLanguageModel>.from(json['spoken_languages'].map((prod) => SpokenLanguageModel.fromMap(prod))),
    status: json['status'],
    tagline: json['tagline'],
    title: json['title'],
    video: json['video'],
    voteAverage: json['vote_average'].toDouble(),
    voteCount: json['vote_count']
  );
}