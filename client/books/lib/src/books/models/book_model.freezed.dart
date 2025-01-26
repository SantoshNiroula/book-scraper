// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {

 String? get title => throw _privateConstructorUsedError; String? get image => throw _privateConstructorUsedError; String? get price => throw _privateConstructorUsedError;






/// Serializes this BookModel to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$BookModelCopyWith<BookModel> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) = _$BookModelCopyWithImpl<$Res, BookModel>;
@useResult
$Res call({
 String? title, String? image, String? price
});



}

/// @nodoc
class _$BookModelCopyWithImpl<$Res,$Val extends BookModel> implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? image = freezed,Object? price = freezed,}) {
  return _then(_value.copyWith(
title: freezed == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _value.image : image // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(_$BookModelImpl value, $Res Function(_$BookModelImpl) then) = __$$BookModelImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String? title, String? image, String? price
});



}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res> extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl> implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(_$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
      : super(_value, _then);


/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? image = freezed,Object? price = freezed,}) {
  return _then(_$BookModelImpl(
freezed == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as String?,freezed == image ? _value.image : image // ignore: cast_nullable_to_non_nullable
as String?,freezed == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$BookModelImpl  implements _BookModel {
   _$BookModelImpl(this.title, this.image, this.price);

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) => _$$BookModelImplFromJson(json);

@override final  String? title;
@override final  String? image;
@override final  String? price;

@override
String toString() {
  return 'BookModel(title: $title, image: $image, price: $price)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BookModelImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,image,price);

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BookModelImplCopyWith<_$BookModelImpl> get copyWith => __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$BookModelImplToJson(this, );
}
}


abstract class _BookModel implements BookModel {
   factory _BookModel(final  String? title, final  String? image, final  String? price) = _$BookModelImpl;
  

  factory _BookModel.fromJson(Map<String, dynamic> json) = _$BookModelImpl.fromJson;

@override String? get title;@override String? get image;@override String? get price;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$BookModelImplCopyWith<_$BookModelImpl> get copyWith => throw _privateConstructorUsedError;

}
