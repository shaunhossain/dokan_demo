// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "post_author")
  String? get postAuthor => throw _privateConstructorUsedError;
  @JsonKey(name: "permalink")
  String? get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created")
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified")
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "featured")
  bool? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  String? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "price_html")
  String? get priceHtml => throw _privateConstructorUsedError;
  @JsonKey(name: "on_sale")
  bool? get onSale => throw _privateConstructorUsedError;
  @JsonKey(name: "purchasable")
  bool? get purchasable => throw _privateConstructorUsedError;
  @JsonKey(name: "total_sales")
  int? get totalSales => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual")
  bool? get virtual => throw _privateConstructorUsedError;
  @JsonKey(name: "downloadable")
  bool? get downloadable => throw _privateConstructorUsedError;
  @JsonKey(name: "downloads")
  List<Download>? get downloads => throw _privateConstructorUsedError;
  @JsonKey(name: "download_limit")
  int? get downloadLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "download_expiry")
  int? get downloadExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "external_url")
  String? get externalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "button_text")
  String? get buttonText => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_status")
  String? get taxStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_class")
  String? get taxClass => throw _privateConstructorUsedError;
  @JsonKey(name: "manage_stock")
  bool? get manageStock => throw _privateConstructorUsedError;
  @JsonKey(name: "in_stock")
  bool? get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: "backorders")
  String? get backorders => throw _privateConstructorUsedError;
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: "backordered")
  bool? get backordered => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually => throw _privateConstructorUsedError;
  @JsonKey(name: "weight")
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "dimensions")
  Dimensions? get dimensions => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_required")
  bool? get shippingRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_taxable")
  bool? get shippingTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_class")
  String? get shippingClass => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_class_id")
  int? get shippingClassId => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_allowed")
  bool? get reviewsAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: "average_rating")
  String? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating_count")
  int? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: "related_ids")
  List<int>? get relatedIds => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_note")
  String? get purchaseNote => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<Category>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "menu_order")
  int? get menuOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  Store? get store => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<Category>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "post_author") String? postAuthor,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "date_created") DateTime? dateCreated,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified") DateTime? dateModified,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "featured") bool? featured,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_html") String? priceHtml,
      @JsonKey(name: "on_sale") bool? onSale,
      @JsonKey(name: "purchasable") bool? purchasable,
      @JsonKey(name: "total_sales") int? totalSales,
      @JsonKey(name: "virtual") bool? virtual,
      @JsonKey(name: "downloadable") bool? downloadable,
      @JsonKey(name: "downloads") List<Download>? downloads,
      @JsonKey(name: "download_limit") int? downloadLimit,
      @JsonKey(name: "download_expiry") int? downloadExpiry,
      @JsonKey(name: "external_url") String? externalUrl,
      @JsonKey(name: "button_text") String? buttonText,
      @JsonKey(name: "tax_status") String? taxStatus,
      @JsonKey(name: "tax_class") String? taxClass,
      @JsonKey(name: "manage_stock") bool? manageStock,
      @JsonKey(name: "in_stock") bool? inStock,
      @JsonKey(name: "backorders") String? backorders,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "backordered") bool? backordered,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "dimensions") Dimensions? dimensions,
      @JsonKey(name: "shipping_required") bool? shippingRequired,
      @JsonKey(name: "shipping_taxable") bool? shippingTaxable,
      @JsonKey(name: "shipping_class") String? shippingClass,
      @JsonKey(name: "shipping_class_id") int? shippingClassId,
      @JsonKey(name: "reviews_allowed") bool? reviewsAllowed,
      @JsonKey(name: "average_rating") String? averageRating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "related_ids") List<int>? relatedIds,
      @JsonKey(name: "parent_id") int? parentId,
      @JsonKey(name: "purchase_note") String? purchaseNote,
      @JsonKey(name: "categories") List<Category>? categories,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "menu_order") int? menuOrder,
      @JsonKey(name: "store") Store? store,
      @JsonKey(name: "tags") List<Category>? tags});

  $DimensionsCopyWith<$Res>? get dimensions;
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? postAuthor = freezed,
    Object? permalink = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? catalogVisibility = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceHtml = freezed,
    Object? onSale = freezed,
    Object? purchasable = freezed,
    Object? totalSales = freezed,
    Object? virtual = freezed,
    Object? downloadable = freezed,
    Object? downloads = freezed,
    Object? downloadLimit = freezed,
    Object? downloadExpiry = freezed,
    Object? externalUrl = freezed,
    Object? buttonText = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? manageStock = freezed,
    Object? inStock = freezed,
    Object? backorders = freezed,
    Object? backordersAllowed = freezed,
    Object? backordered = freezed,
    Object? soldIndividually = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? shippingRequired = freezed,
    Object? shippingTaxable = freezed,
    Object? shippingClass = freezed,
    Object? shippingClassId = freezed,
    Object? reviewsAllowed = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? relatedIds = freezed,
    Object? parentId = freezed,
    Object? purchaseNote = freezed,
    Object? categories = freezed,
    Object? images = freezed,
    Object? menuOrder = freezed,
    Object? store = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      postAuthor: freezed == postAuthor
          ? _value.postAuthor
          : postAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHtml: freezed == priceHtml
          ? _value.priceHtml
          : priceHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      onSale: freezed == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchasable: freezed == purchasable
          ? _value.purchasable
          : purchasable // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalSales: freezed == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as int?,
      virtual: freezed == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as bool?,
      downloadable: freezed == downloadable
          ? _value.downloadable
          : downloadable // ignore: cast_nullable_to_non_nullable
              as bool?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      downloadLimit: freezed == downloadLimit
          ? _value.downloadLimit
          : downloadLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadExpiry: freezed == downloadExpiry
          ? _value.downloadExpiry
          : downloadExpiry // ignore: cast_nullable_to_non_nullable
              as int?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      taxStatus: freezed == taxStatus
          ? _value.taxStatus
          : taxStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      taxClass: freezed == taxClass
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as String?,
      manageStock: freezed == manageStock
          ? _value.manageStock
          : manageStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      inStock: freezed == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      backorders: freezed == backorders
          ? _value.backorders
          : backorders // ignore: cast_nullable_to_non_nullable
              as String?,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      backordered: freezed == backordered
          ? _value.backordered
          : backordered // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      shippingRequired: freezed == shippingRequired
          ? _value.shippingRequired
          : shippingRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingTaxable: freezed == shippingTaxable
          ? _value.shippingTaxable
          : shippingTaxable // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingClass: freezed == shippingClass
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingClassId: freezed == shippingClassId
          ? _value.shippingClassId
          : shippingClassId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAllowed: freezed == reviewsAllowed
          ? _value.reviewsAllowed
          : reviewsAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedIds: freezed == relatedIds
          ? _value.relatedIds
          : relatedIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseNote: freezed == purchaseNote
          ? _value.purchaseNote
          : purchaseNote // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      menuOrder: freezed == menuOrder
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "post_author") String? postAuthor,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "date_created") DateTime? dateCreated,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified") DateTime? dateModified,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "featured") bool? featured,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_html") String? priceHtml,
      @JsonKey(name: "on_sale") bool? onSale,
      @JsonKey(name: "purchasable") bool? purchasable,
      @JsonKey(name: "total_sales") int? totalSales,
      @JsonKey(name: "virtual") bool? virtual,
      @JsonKey(name: "downloadable") bool? downloadable,
      @JsonKey(name: "downloads") List<Download>? downloads,
      @JsonKey(name: "download_limit") int? downloadLimit,
      @JsonKey(name: "download_expiry") int? downloadExpiry,
      @JsonKey(name: "external_url") String? externalUrl,
      @JsonKey(name: "button_text") String? buttonText,
      @JsonKey(name: "tax_status") String? taxStatus,
      @JsonKey(name: "tax_class") String? taxClass,
      @JsonKey(name: "manage_stock") bool? manageStock,
      @JsonKey(name: "in_stock") bool? inStock,
      @JsonKey(name: "backorders") String? backorders,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "backordered") bool? backordered,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "dimensions") Dimensions? dimensions,
      @JsonKey(name: "shipping_required") bool? shippingRequired,
      @JsonKey(name: "shipping_taxable") bool? shippingTaxable,
      @JsonKey(name: "shipping_class") String? shippingClass,
      @JsonKey(name: "shipping_class_id") int? shippingClassId,
      @JsonKey(name: "reviews_allowed") bool? reviewsAllowed,
      @JsonKey(name: "average_rating") String? averageRating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "related_ids") List<int>? relatedIds,
      @JsonKey(name: "parent_id") int? parentId,
      @JsonKey(name: "purchase_note") String? purchaseNote,
      @JsonKey(name: "categories") List<Category>? categories,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "menu_order") int? menuOrder,
      @JsonKey(name: "store") Store? store,
      @JsonKey(name: "tags") List<Category>? tags});

  @override
  $DimensionsCopyWith<$Res>? get dimensions;
  @override
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? postAuthor = freezed,
    Object? permalink = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? catalogVisibility = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceHtml = freezed,
    Object? onSale = freezed,
    Object? purchasable = freezed,
    Object? totalSales = freezed,
    Object? virtual = freezed,
    Object? downloadable = freezed,
    Object? downloads = freezed,
    Object? downloadLimit = freezed,
    Object? downloadExpiry = freezed,
    Object? externalUrl = freezed,
    Object? buttonText = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? manageStock = freezed,
    Object? inStock = freezed,
    Object? backorders = freezed,
    Object? backordersAllowed = freezed,
    Object? backordered = freezed,
    Object? soldIndividually = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? shippingRequired = freezed,
    Object? shippingTaxable = freezed,
    Object? shippingClass = freezed,
    Object? shippingClassId = freezed,
    Object? reviewsAllowed = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? relatedIds = freezed,
    Object? parentId = freezed,
    Object? purchaseNote = freezed,
    Object? categories = freezed,
    Object? images = freezed,
    Object? menuOrder = freezed,
    Object? store = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      postAuthor: freezed == postAuthor
          ? _value.postAuthor
          : postAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHtml: freezed == priceHtml
          ? _value.priceHtml
          : priceHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      onSale: freezed == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchasable: freezed == purchasable
          ? _value.purchasable
          : purchasable // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalSales: freezed == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as int?,
      virtual: freezed == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as bool?,
      downloadable: freezed == downloadable
          ? _value.downloadable
          : downloadable // ignore: cast_nullable_to_non_nullable
              as bool?,
      downloads: freezed == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      downloadLimit: freezed == downloadLimit
          ? _value.downloadLimit
          : downloadLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadExpiry: freezed == downloadExpiry
          ? _value.downloadExpiry
          : downloadExpiry // ignore: cast_nullable_to_non_nullable
              as int?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      taxStatus: freezed == taxStatus
          ? _value.taxStatus
          : taxStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      taxClass: freezed == taxClass
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as String?,
      manageStock: freezed == manageStock
          ? _value.manageStock
          : manageStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      inStock: freezed == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      backorders: freezed == backorders
          ? _value.backorders
          : backorders // ignore: cast_nullable_to_non_nullable
              as String?,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      backordered: freezed == backordered
          ? _value.backordered
          : backordered // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      shippingRequired: freezed == shippingRequired
          ? _value.shippingRequired
          : shippingRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingTaxable: freezed == shippingTaxable
          ? _value.shippingTaxable
          : shippingTaxable // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingClass: freezed == shippingClass
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingClassId: freezed == shippingClassId
          ? _value.shippingClassId
          : shippingClassId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAllowed: freezed == reviewsAllowed
          ? _value.reviewsAllowed
          : reviewsAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedIds: freezed == relatedIds
          ? _value._relatedIds
          : relatedIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseNote: freezed == purchaseNote
          ? _value.purchaseNote
          : purchaseNote // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      menuOrder: freezed == menuOrder
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "post_author") this.postAuthor,
      @JsonKey(name: "permalink") this.permalink,
      @JsonKey(name: "date_created") this.dateCreated,
      @JsonKey(name: "date_created_gmt") this.dateCreatedGmt,
      @JsonKey(name: "date_modified") this.dateModified,
      @JsonKey(name: "date_modified_gmt") this.dateModifiedGmt,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "featured") this.featured,
      @JsonKey(name: "catalog_visibility") this.catalogVisibility,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "sku") this.sku,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "price_html") this.priceHtml,
      @JsonKey(name: "on_sale") this.onSale,
      @JsonKey(name: "purchasable") this.purchasable,
      @JsonKey(name: "total_sales") this.totalSales,
      @JsonKey(name: "virtual") this.virtual,
      @JsonKey(name: "downloadable") this.downloadable,
      @JsonKey(name: "downloads") final List<Download>? downloads,
      @JsonKey(name: "download_limit") this.downloadLimit,
      @JsonKey(name: "download_expiry") this.downloadExpiry,
      @JsonKey(name: "external_url") this.externalUrl,
      @JsonKey(name: "button_text") this.buttonText,
      @JsonKey(name: "tax_status") this.taxStatus,
      @JsonKey(name: "tax_class") this.taxClass,
      @JsonKey(name: "manage_stock") this.manageStock,
      @JsonKey(name: "in_stock") this.inStock,
      @JsonKey(name: "backorders") this.backorders,
      @JsonKey(name: "backorders_allowed") this.backordersAllowed,
      @JsonKey(name: "backordered") this.backordered,
      @JsonKey(name: "sold_individually") this.soldIndividually,
      @JsonKey(name: "weight") this.weight,
      @JsonKey(name: "dimensions") this.dimensions,
      @JsonKey(name: "shipping_required") this.shippingRequired,
      @JsonKey(name: "shipping_taxable") this.shippingTaxable,
      @JsonKey(name: "shipping_class") this.shippingClass,
      @JsonKey(name: "shipping_class_id") this.shippingClassId,
      @JsonKey(name: "reviews_allowed") this.reviewsAllowed,
      @JsonKey(name: "average_rating") this.averageRating,
      @JsonKey(name: "rating_count") this.ratingCount,
      @JsonKey(name: "related_ids") final List<int>? relatedIds,
      @JsonKey(name: "parent_id") this.parentId,
      @JsonKey(name: "purchase_note") this.purchaseNote,
      @JsonKey(name: "categories") final List<Category>? categories,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "menu_order") this.menuOrder,
      @JsonKey(name: "store") this.store,
      @JsonKey(name: "tags") final List<Category>? tags})
      : _downloads = downloads,
        _relatedIds = relatedIds,
        _categories = categories,
        _images = images,
        _tags = tags;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "post_author")
  final String? postAuthor;
  @override
  @JsonKey(name: "permalink")
  final String? permalink;
  @override
  @JsonKey(name: "date_created")
  final DateTime? dateCreated;
  @override
  @JsonKey(name: "date_created_gmt")
  final DateTime? dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified")
  final DateTime? dateModified;
  @override
  @JsonKey(name: "date_modified_gmt")
  final DateTime? dateModifiedGmt;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "featured")
  final bool? featured;
  @override
  @JsonKey(name: "catalog_visibility")
  final String? catalogVisibility;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override
  @JsonKey(name: "sku")
  final String? sku;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "regular_price")
  final String? regularPrice;
  @override
  @JsonKey(name: "sale_price")
  final String? salePrice;
  @override
  @JsonKey(name: "price_html")
  final String? priceHtml;
  @override
  @JsonKey(name: "on_sale")
  final bool? onSale;
  @override
  @JsonKey(name: "purchasable")
  final bool? purchasable;
  @override
  @JsonKey(name: "total_sales")
  final int? totalSales;
  @override
  @JsonKey(name: "virtual")
  final bool? virtual;
  @override
  @JsonKey(name: "downloadable")
  final bool? downloadable;
  final List<Download>? _downloads;
  @override
  @JsonKey(name: "downloads")
  List<Download>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "download_limit")
  final int? downloadLimit;
  @override
  @JsonKey(name: "download_expiry")
  final int? downloadExpiry;
  @override
  @JsonKey(name: "external_url")
  final String? externalUrl;
  @override
  @JsonKey(name: "button_text")
  final String? buttonText;
  @override
  @JsonKey(name: "tax_status")
  final String? taxStatus;
  @override
  @JsonKey(name: "tax_class")
  final String? taxClass;
  @override
  @JsonKey(name: "manage_stock")
  final bool? manageStock;
  @override
  @JsonKey(name: "in_stock")
  final bool? inStock;
  @override
  @JsonKey(name: "backorders")
  final String? backorders;
  @override
  @JsonKey(name: "backorders_allowed")
  final bool? backordersAllowed;
  @override
  @JsonKey(name: "backordered")
  final bool? backordered;
  @override
  @JsonKey(name: "sold_individually")
  final bool? soldIndividually;
  @override
  @JsonKey(name: "weight")
  final String? weight;
  @override
  @JsonKey(name: "dimensions")
  final Dimensions? dimensions;
  @override
  @JsonKey(name: "shipping_required")
  final bool? shippingRequired;
  @override
  @JsonKey(name: "shipping_taxable")
  final bool? shippingTaxable;
  @override
  @JsonKey(name: "shipping_class")
  final String? shippingClass;
  @override
  @JsonKey(name: "shipping_class_id")
  final int? shippingClassId;
  @override
  @JsonKey(name: "reviews_allowed")
  final bool? reviewsAllowed;
  @override
  @JsonKey(name: "average_rating")
  final String? averageRating;
  @override
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  final List<int>? _relatedIds;
  @override
  @JsonKey(name: "related_ids")
  List<int>? get relatedIds {
    final value = _relatedIds;
    if (value == null) return null;
    if (_relatedIds is EqualUnmodifiableListView) return _relatedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "parent_id")
  final int? parentId;
  @override
  @JsonKey(name: "purchase_note")
  final String? purchaseNote;
  final List<Category>? _categories;
  @override
  @JsonKey(name: "categories")
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "menu_order")
  final int? menuOrder;
  @override
  @JsonKey(name: "store")
  final Store? store;
  final List<Category>? _tags;
  @override
  @JsonKey(name: "tags")
  List<Category>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductResponse(id: $id, name: $name, slug: $slug, postAuthor: $postAuthor, permalink: $permalink, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, priceHtml: $priceHtml, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, downloads: $downloads, downloadLimit: $downloadLimit, downloadExpiry: $downloadExpiry, externalUrl: $externalUrl, buttonText: $buttonText, taxStatus: $taxStatus, taxClass: $taxClass, manageStock: $manageStock, inStock: $inStock, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, soldIndividually: $soldIndividually, weight: $weight, dimensions: $dimensions, shippingRequired: $shippingRequired, shippingTaxable: $shippingTaxable, shippingClass: $shippingClass, shippingClassId: $shippingClassId, reviewsAllowed: $reviewsAllowed, averageRating: $averageRating, ratingCount: $ratingCount, relatedIds: $relatedIds, parentId: $parentId, purchaseNote: $purchaseNote, categories: $categories, images: $images, menuOrder: $menuOrder, store: $store, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.postAuthor, postAuthor) ||
                other.postAuthor == postAuthor) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.priceHtml, priceHtml) ||
                other.priceHtml == priceHtml) &&
            (identical(other.onSale, onSale) || other.onSale == onSale) &&
            (identical(other.purchasable, purchasable) ||
                other.purchasable == purchasable) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.virtual, virtual) || other.virtual == virtual) &&
            (identical(other.downloadable, downloadable) ||
                other.downloadable == downloadable) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downloadLimit, downloadLimit) ||
                other.downloadLimit == downloadLimit) &&
            (identical(other.downloadExpiry, downloadExpiry) ||
                other.downloadExpiry == downloadExpiry) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.taxStatus, taxStatus) ||
                other.taxStatus == taxStatus) &&
            (identical(other.taxClass, taxClass) ||
                other.taxClass == taxClass) &&
            (identical(other.manageStock, manageStock) ||
                other.manageStock == manageStock) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.backorders, backorders) ||
                other.backorders == backorders) &&
            (identical(other.backordersAllowed, backordersAllowed) ||
                other.backordersAllowed == backordersAllowed) &&
            (identical(other.backordered, backordered) ||
                other.backordered == backordered) &&
            (identical(other.soldIndividually, soldIndividually) ||
                other.soldIndividually == soldIndividually) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.shippingRequired, shippingRequired) ||
                other.shippingRequired == shippingRequired) &&
            (identical(other.shippingTaxable, shippingTaxable) ||
                other.shippingTaxable == shippingTaxable) &&
            (identical(other.shippingClass, shippingClass) ||
                other.shippingClass == shippingClass) &&
            (identical(other.shippingClassId, shippingClassId) ||
                other.shippingClassId == shippingClassId) &&
            (identical(other.reviewsAllowed, reviewsAllowed) ||
                other.reviewsAllowed == reviewsAllowed) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            const DeepCollectionEquality()
                .equals(other._relatedIds, _relatedIds) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.purchaseNote, purchaseNote) ||
                other.purchaseNote == purchaseNote) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.menuOrder, menuOrder) ||
                other.menuOrder == menuOrder) &&
            (identical(other.store, store) || other.store == store) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        postAuthor,
        permalink,
        dateCreated,
        dateCreatedGmt,
        dateModified,
        dateModifiedGmt,
        type,
        status,
        featured,
        catalogVisibility,
        description,
        shortDescription,
        sku,
        price,
        regularPrice,
        salePrice,
        priceHtml,
        onSale,
        purchasable,
        totalSales,
        virtual,
        downloadable,
        const DeepCollectionEquality().hash(_downloads),
        downloadLimit,
        downloadExpiry,
        externalUrl,
        buttonText,
        taxStatus,
        taxClass,
        manageStock,
        inStock,
        backorders,
        backordersAllowed,
        backordered,
        soldIndividually,
        weight,
        dimensions,
        shippingRequired,
        shippingTaxable,
        shippingClass,
        shippingClassId,
        reviewsAllowed,
        averageRating,
        ratingCount,
        const DeepCollectionEquality().hash(_relatedIds),
        parentId,
        purchaseNote,
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_images),
        menuOrder,
        store,
        const DeepCollectionEquality().hash(_tags)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "post_author") final String? postAuthor,
          @JsonKey(name: "permalink") final String? permalink,
          @JsonKey(name: "date_created") final DateTime? dateCreated,
          @JsonKey(name: "date_created_gmt") final DateTime? dateCreatedGmt,
          @JsonKey(name: "date_modified") final DateTime? dateModified,
          @JsonKey(name: "date_modified_gmt") final DateTime? dateModifiedGmt,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "featured") final bool? featured,
          @JsonKey(name: "catalog_visibility") final String? catalogVisibility,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "short_description") final String? shortDescription,
          @JsonKey(name: "sku") final String? sku,
          @JsonKey(name: "price") final String? price,
          @JsonKey(name: "regular_price") final String? regularPrice,
          @JsonKey(name: "sale_price") final String? salePrice,
          @JsonKey(name: "price_html") final String? priceHtml,
          @JsonKey(name: "on_sale") final bool? onSale,
          @JsonKey(name: "purchasable") final bool? purchasable,
          @JsonKey(name: "total_sales") final int? totalSales,
          @JsonKey(name: "virtual") final bool? virtual,
          @JsonKey(name: "downloadable") final bool? downloadable,
          @JsonKey(name: "downloads") final List<Download>? downloads,
          @JsonKey(name: "download_limit") final int? downloadLimit,
          @JsonKey(name: "download_expiry") final int? downloadExpiry,
          @JsonKey(name: "external_url") final String? externalUrl,
          @JsonKey(name: "button_text") final String? buttonText,
          @JsonKey(name: "tax_status") final String? taxStatus,
          @JsonKey(name: "tax_class") final String? taxClass,
          @JsonKey(name: "manage_stock") final bool? manageStock,
          @JsonKey(name: "in_stock") final bool? inStock,
          @JsonKey(name: "backorders") final String? backorders,
          @JsonKey(name: "backorders_allowed") final bool? backordersAllowed,
          @JsonKey(name: "backordered") final bool? backordered,
          @JsonKey(name: "sold_individually") final bool? soldIndividually,
          @JsonKey(name: "weight") final String? weight,
          @JsonKey(name: "dimensions") final Dimensions? dimensions,
          @JsonKey(name: "shipping_required") final bool? shippingRequired,
          @JsonKey(name: "shipping_taxable") final bool? shippingTaxable,
          @JsonKey(name: "shipping_class") final String? shippingClass,
          @JsonKey(name: "shipping_class_id") final int? shippingClassId,
          @JsonKey(name: "reviews_allowed") final bool? reviewsAllowed,
          @JsonKey(name: "average_rating") final String? averageRating,
          @JsonKey(name: "rating_count") final int? ratingCount,
          @JsonKey(name: "related_ids") final List<int>? relatedIds,
          @JsonKey(name: "parent_id") final int? parentId,
          @JsonKey(name: "purchase_note") final String? purchaseNote,
          @JsonKey(name: "categories") final List<Category>? categories,
          @JsonKey(name: "images") final List<Image>? images,
          @JsonKey(name: "menu_order") final int? menuOrder,
          @JsonKey(name: "store") final Store? store,
          @JsonKey(name: "tags") final List<Category>? tags}) =
      _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "post_author")
  String? get postAuthor;
  @override
  @JsonKey(name: "permalink")
  String? get permalink;
  @override
  @JsonKey(name: "date_created")
  DateTime? get dateCreated;
  @override
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified")
  DateTime? get dateModified;
  @override
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "featured")
  bool? get featured;
  @override
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "short_description")
  String? get shortDescription;
  @override
  @JsonKey(name: "sku")
  String? get sku;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "regular_price")
  String? get regularPrice;
  @override
  @JsonKey(name: "sale_price")
  String? get salePrice;
  @override
  @JsonKey(name: "price_html")
  String? get priceHtml;
  @override
  @JsonKey(name: "on_sale")
  bool? get onSale;
  @override
  @JsonKey(name: "purchasable")
  bool? get purchasable;
  @override
  @JsonKey(name: "total_sales")
  int? get totalSales;
  @override
  @JsonKey(name: "virtual")
  bool? get virtual;
  @override
  @JsonKey(name: "downloadable")
  bool? get downloadable;
  @override
  @JsonKey(name: "downloads")
  List<Download>? get downloads;
  @override
  @JsonKey(name: "download_limit")
  int? get downloadLimit;
  @override
  @JsonKey(name: "download_expiry")
  int? get downloadExpiry;
  @override
  @JsonKey(name: "external_url")
  String? get externalUrl;
  @override
  @JsonKey(name: "button_text")
  String? get buttonText;
  @override
  @JsonKey(name: "tax_status")
  String? get taxStatus;
  @override
  @JsonKey(name: "tax_class")
  String? get taxClass;
  @override
  @JsonKey(name: "manage_stock")
  bool? get manageStock;
  @override
  @JsonKey(name: "in_stock")
  bool? get inStock;
  @override
  @JsonKey(name: "backorders")
  String? get backorders;
  @override
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed;
  @override
  @JsonKey(name: "backordered")
  bool? get backordered;
  @override
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually;
  @override
  @JsonKey(name: "weight")
  String? get weight;
  @override
  @JsonKey(name: "dimensions")
  Dimensions? get dimensions;
  @override
  @JsonKey(name: "shipping_required")
  bool? get shippingRequired;
  @override
  @JsonKey(name: "shipping_taxable")
  bool? get shippingTaxable;
  @override
  @JsonKey(name: "shipping_class")
  String? get shippingClass;
  @override
  @JsonKey(name: "shipping_class_id")
  int? get shippingClassId;
  @override
  @JsonKey(name: "reviews_allowed")
  bool? get reviewsAllowed;
  @override
  @JsonKey(name: "average_rating")
  String? get averageRating;
  @override
  @JsonKey(name: "rating_count")
  int? get ratingCount;
  @override
  @JsonKey(name: "related_ids")
  List<int>? get relatedIds;
  @override
  @JsonKey(name: "parent_id")
  int? get parentId;
  @override
  @JsonKey(name: "purchase_note")
  String? get purchaseNote;
  @override
  @JsonKey(name: "categories")
  List<Category>? get categories;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;
  @override
  @JsonKey(name: "menu_order")
  int? get menuOrder;
  @override
  @JsonKey(name: "store")
  Store? get store;
  @override
  @JsonKey(name: "tags")
  List<Category>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "slug") String? slug});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "slug") String? slug});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$CategoryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: "name") this.name, @JsonKey(name: "slug") this.slug});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "slug")
  final String? slug;

  @override
  String toString() {
    return 'Category(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "slug") final String? slug}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) {
  return _Dimensions.fromJson(json);
}

/// @nodoc
mixin _$Dimensions {
  @JsonKey(name: "length")
  String? get length => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  String? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  String? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DimensionsCopyWith<Dimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) then) =
      _$DimensionsCopyWithImpl<$Res, Dimensions>;
  @useResult
  $Res call(
      {@JsonKey(name: "length") String? length,
      @JsonKey(name: "width") String? width,
      @JsonKey(name: "height") String? height});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res, $Val extends Dimensions>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionsImplCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$$DimensionsImplCopyWith(
          _$DimensionsImpl value, $Res Function(_$DimensionsImpl) then) =
      __$$DimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "length") String? length,
      @JsonKey(name: "width") String? width,
      @JsonKey(name: "height") String? height});
}

/// @nodoc
class __$$DimensionsImplCopyWithImpl<$Res>
    extends _$DimensionsCopyWithImpl<$Res, _$DimensionsImpl>
    implements _$$DimensionsImplCopyWith<$Res> {
  __$$DimensionsImplCopyWithImpl(
      _$DimensionsImpl _value, $Res Function(_$DimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$DimensionsImpl(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionsImpl implements _Dimensions {
  const _$DimensionsImpl(
      {@JsonKey(name: "length") this.length,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height});

  factory _$DimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionsImplFromJson(json);

  @override
  @JsonKey(name: "length")
  final String? length;
  @override
  @JsonKey(name: "width")
  final String? width;
  @override
  @JsonKey(name: "height")
  final String? height;

  @override
  String toString() {
    return 'Dimensions(length: $length, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      __$$DimensionsImplCopyWithImpl<_$DimensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionsImplToJson(
      this,
    );
  }
}

abstract class _Dimensions implements Dimensions {
  const factory _Dimensions(
      {@JsonKey(name: "length") final String? length,
      @JsonKey(name: "width") final String? width,
      @JsonKey(name: "height") final String? height}) = _$DimensionsImpl;

  factory _Dimensions.fromJson(Map<String, dynamic> json) =
      _$DimensionsImpl.fromJson;

  @override
  @JsonKey(name: "length")
  String? get length;
  @override
  @JsonKey(name: "width")
  String? get width;
  @override
  @JsonKey(name: "height")
  String? get height;
  @override
  @JsonKey(ignore: true)
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Download _$DownloadFromJson(Map<String, dynamic> json) {
  return _Download.fromJson(json);
}

/// @nodoc
mixin _$Download {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "file")
  String? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadCopyWith<Download> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadCopyWith<$Res> {
  factory $DownloadCopyWith(Download value, $Res Function(Download) then) =
      _$DownloadCopyWithImpl<$Res, Download>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "file") String? file});
}

/// @nodoc
class _$DownloadCopyWithImpl<$Res, $Val extends Download>
    implements $DownloadCopyWith<$Res> {
  _$DownloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadImplCopyWith<$Res>
    implements $DownloadCopyWith<$Res> {
  factory _$$DownloadImplCopyWith(
          _$DownloadImpl value, $Res Function(_$DownloadImpl) then) =
      __$$DownloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "file") String? file});
}

/// @nodoc
class __$$DownloadImplCopyWithImpl<$Res>
    extends _$DownloadCopyWithImpl<$Res, _$DownloadImpl>
    implements _$$DownloadImplCopyWith<$Res> {
  __$$DownloadImplCopyWithImpl(
      _$DownloadImpl _value, $Res Function(_$DownloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_$DownloadImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadImpl implements _Download {
  const _$DownloadImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "file") this.file});

  factory _$DownloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "file")
  final String? file;

  @override
  String toString() {
    return 'Download(id: $id, name: $name, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      __$$DownloadImplCopyWithImpl<_$DownloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadImplToJson(
      this,
    );
  }
}

abstract class _Download implements Download {
  const factory _Download(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "file") final String? file}) = _$DownloadImpl;

  factory _Download.fromJson(Map<String, dynamic> json) =
      _$DownloadImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "file")
  String? get file;
  @override
  @JsonKey(ignore: true)
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created")
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified")
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "src")
  String? get src => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "alt")
  String? get alt => throw _privateConstructorUsedError;
  @JsonKey(name: "position")
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "date_created") DateTime? dateCreated,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified") DateTime? dateModified,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "src") String? src,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alt") String? alt,
      @JsonKey(name: "position") int? position});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? src = freezed,
    Object? name = freezed,
    Object? alt = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "date_created") DateTime? dateCreated,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified") DateTime? dateModified,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "src") String? src,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alt") String? alt,
      @JsonKey(name: "position") int? position});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? src = freezed,
    Object? name = freezed,
    Object? alt = freezed,
    Object? position = freezed,
  }) {
    return _then(_$ImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "date_created") this.dateCreated,
      @JsonKey(name: "date_created_gmt") this.dateCreatedGmt,
      @JsonKey(name: "date_modified") this.dateModified,
      @JsonKey(name: "date_modified_gmt") this.dateModifiedGmt,
      @JsonKey(name: "src") this.src,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "alt") this.alt,
      @JsonKey(name: "position") this.position});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "date_created")
  final DateTime? dateCreated;
  @override
  @JsonKey(name: "date_created_gmt")
  final DateTime? dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified")
  final DateTime? dateModified;
  @override
  @JsonKey(name: "date_modified_gmt")
  final DateTime? dateModifiedGmt;
  @override
  @JsonKey(name: "src")
  final String? src;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "alt")
  final String? alt;
  @override
  @JsonKey(name: "position")
  final int? position;

  @override
  String toString() {
    return 'Image(id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, src: $src, name: $name, alt: $alt, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alt, alt) || other.alt == alt) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCreated, dateCreatedGmt,
      dateModified, dateModifiedGmt, src, name, alt, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "date_created") final DateTime? dateCreated,
      @JsonKey(name: "date_created_gmt") final DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified") final DateTime? dateModified,
      @JsonKey(name: "date_modified_gmt") final DateTime? dateModifiedGmt,
      @JsonKey(name: "src") final String? src,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "alt") final String? alt,
      @JsonKey(name: "position") final int? position}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "date_created")
  DateTime? get dateCreated;
  @override
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified")
  DateTime? get dateModified;
  @override
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt;
  @override
  @JsonKey(name: "src")
  String? get src;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "alt")
  String? get alt;
  @override
  @JsonKey(name: "position")
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "address") Address? address});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "address") Address? address});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? address = freezed,
  }) {
    return _then(_$StoreImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "address") this.address});

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "address")
  final Address? address;

  @override
  String toString() {
    return 'Store(id: $id, name: $name, url: $url, avatar: $avatar, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, avatar, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "avatar") final String? avatar,
      @JsonKey(name: "address") final Address? address}) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "address")
  Address? get address;
  @override
  @JsonKey(ignore: true)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "street_1")
  String? get street1 => throw _privateConstructorUsedError;
  @JsonKey(name: "street_2")
  String? get street2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "zip")
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: "street_1") String? street1,
      @JsonKey(name: "street_2") String? street2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "zip") String? zip,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street1 = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      street1: freezed == street1
          ? _value.street1
          : street1 // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: freezed == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "street_1") String? street1,
      @JsonKey(name: "street_2") String? street2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "zip") String? zip,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street1 = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_$AddressImpl(
      street1: freezed == street1
          ? _value.street1
          : street1 // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: freezed == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "street_1") this.street1,
      @JsonKey(name: "street_2") this.street2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "zip") this.zip,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "state") this.state});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "street_1")
  final String? street1;
  @override
  @JsonKey(name: "street_2")
  final String? street2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "zip")
  final String? zip;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "state")
  final String? state;

  @override
  String toString() {
    return 'Address(street1: $street1, street2: $street2, city: $city, zip: $zip, country: $country, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street1, street1) || other.street1 == street1) &&
            (identical(other.street2, street2) || other.street2 == street2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street1, street2, city, zip, country, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@JsonKey(name: "street_1") final String? street1,
      @JsonKey(name: "street_2") final String? street2,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "zip") final String? zip,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "state") final String? state}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "street_1")
  String? get street1;
  @override
  @JsonKey(name: "street_2")
  String? get street2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "zip")
  String? get zip;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
