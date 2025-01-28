// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedBookModelImpl _$$PaginatedBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedBookModelImpl(
      limit: (json['limit'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginatedBookModelImplToJson(
        _$PaginatedBookModelImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'skip': instance.skip,
      'total': instance.total,
      'books': instance.books.map((e) => e.toJson()).toList(),
    };
