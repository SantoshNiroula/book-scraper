// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedBookModel _$PaginatedBookModelFromJson(Map<String, dynamic> json) {
return _PaginatedBookModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedBookModel {

 int get limit => throw _privateConstructorUsedError; int get skip => throw _privateConstructorUsedError; int get total => throw _privateConstructorUsedError; List<BookModel> get books => throw _privateConstructorUsedError;






/// Serializes this PaginatedBookModel to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of PaginatedBookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PaginatedBookModelCopyWith<PaginatedBookModel> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PaginatedBookModelCopyWith<$Res>  {
  factory $PaginatedBookModelCopyWith(PaginatedBookModel value, $Res Function(PaginatedBookModel) then) = _$PaginatedBookModelCopyWithImpl<$Res, PaginatedBookModel>;
@useResult
$Res call({
 int limit, int skip, int total, List<BookModel> books
});



}

/// @nodoc
class _$PaginatedBookModelCopyWithImpl<$Res,$Val extends PaginatedBookModel> implements $PaginatedBookModelCopyWith<$Res> {
  _$PaginatedBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PaginatedBookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? skip = null,Object? total = null,Object? books = null,}) {
  return _then(_value.copyWith(
limit: null == limit ? _value.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _value.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,books: null == books ? _value.books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PaginatedBookModelImplCopyWith<$Res> implements $PaginatedBookModelCopyWith<$Res> {
  factory _$$PaginatedBookModelImplCopyWith(_$PaginatedBookModelImpl value, $Res Function(_$PaginatedBookModelImpl) then) = __$$PaginatedBookModelImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int limit, int skip, int total, List<BookModel> books
});



}

/// @nodoc
class __$$PaginatedBookModelImplCopyWithImpl<$Res> extends _$PaginatedBookModelCopyWithImpl<$Res, _$PaginatedBookModelImpl> implements _$$PaginatedBookModelImplCopyWith<$Res> {
  __$$PaginatedBookModelImplCopyWithImpl(_$PaginatedBookModelImpl _value, $Res Function(_$PaginatedBookModelImpl) _then)
      : super(_value, _then);


/// Create a copy of PaginatedBookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? skip = null,Object? total = null,Object? books = null,}) {
  return _then(_$PaginatedBookModelImpl(
limit: null == limit ? _value.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _value.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,books: null == books ? _value._books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$PaginatedBookModelImpl  implements _PaginatedBookModel {
  const _$PaginatedBookModelImpl({required this.limit, required this.skip, required this.total, required final  List<BookModel> books}): _books = books;

  factory _$PaginatedBookModelImpl.fromJson(Map<String, dynamic> json) => _$$PaginatedBookModelImplFromJson(json);

@override final  int limit;
@override final  int skip;
@override final  int total;
 final  List<BookModel> _books;
@override List<BookModel> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}


@override
String toString() {
  return 'PaginatedBookModel(limit: $limit, skip: $skip, total: $total, books: $books)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PaginatedBookModelImpl&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._books, _books));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,limit,skip,total,const DeepCollectionEquality().hash(_books));

/// Create a copy of PaginatedBookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PaginatedBookModelImplCopyWith<_$PaginatedBookModelImpl> get copyWith => __$$PaginatedBookModelImplCopyWithImpl<_$PaginatedBookModelImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$PaginatedBookModelImplToJson(this, );
}
}


abstract class _PaginatedBookModel implements PaginatedBookModel {
  const factory _PaginatedBookModel({required final  int limit, required final  int skip, required final  int total, required final  List<BookModel> books}) = _$PaginatedBookModelImpl;
  

  factory _PaginatedBookModel.fromJson(Map<String, dynamic> json) = _$PaginatedBookModelImpl.fromJson;

@override int get limit;@override int get skip;@override int get total;@override List<BookModel> get books;
/// Create a copy of PaginatedBookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PaginatedBookModelImplCopyWith<_$PaginatedBookModelImpl> get copyWith => throw _privateConstructorUsedError;

}
