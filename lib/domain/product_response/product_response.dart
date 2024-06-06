import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "post_author")
    String? postAuthor,
    @JsonKey(name: "permalink")
    String? permalink,
    @JsonKey(name: "date_created")
    DateTime? dateCreated,
    @JsonKey(name: "date_created_gmt")
    DateTime? dateCreatedGmt,
    @JsonKey(name: "date_modified")
    DateTime? dateModified,
    @JsonKey(name: "date_modified_gmt")
    DateTime? dateModifiedGmt,
    @JsonKey(name: "type")
    String? type,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "featured")
    bool? featured,
    @JsonKey(name: "catalog_visibility")
    String? catalogVisibility,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "short_description")
    String? shortDescription,
    @JsonKey(name: "sku")
    String? sku,
    @JsonKey(name: "price")
    String? price,
    @JsonKey(name: "regular_price")
    String? regularPrice,
    @JsonKey(name: "sale_price")
    String? salePrice,
    @JsonKey(name: "price_html")
    String? priceHtml,
    @JsonKey(name: "on_sale")
    bool? onSale,
    @JsonKey(name: "purchasable")
    bool? purchasable,
    @JsonKey(name: "total_sales")
    int? totalSales,
    @JsonKey(name: "virtual")
    bool? virtual,
    @JsonKey(name: "downloadable")
    bool? downloadable,
    @JsonKey(name: "downloads")
    List<Download>? downloads,
    @JsonKey(name: "download_limit")
    int? downloadLimit,
    @JsonKey(name: "download_expiry")
    int? downloadExpiry,
    @JsonKey(name: "external_url")
    String? externalUrl,
    @JsonKey(name: "button_text")
    String? buttonText,
    @JsonKey(name: "tax_status")
    String? taxStatus,
    @JsonKey(name: "tax_class")
    String? taxClass,
    @JsonKey(name: "manage_stock")
    bool? manageStock,
    @JsonKey(name: "in_stock")
    bool? inStock,
    @JsonKey(name: "backorders")
    String? backorders,
    @JsonKey(name: "backorders_allowed")
    bool? backordersAllowed,
    @JsonKey(name: "backordered")
    bool? backordered,
    @JsonKey(name: "sold_individually")
    bool? soldIndividually,
    @JsonKey(name: "weight")
    String? weight,
    @JsonKey(name: "dimensions")
    Dimensions? dimensions,
    @JsonKey(name: "shipping_required")
    bool? shippingRequired,
    @JsonKey(name: "shipping_taxable")
    bool? shippingTaxable,
    @JsonKey(name: "shipping_class")
    String? shippingClass,
    @JsonKey(name: "shipping_class_id")
    int? shippingClassId,
    @JsonKey(name: "reviews_allowed")
    bool? reviewsAllowed,
    @JsonKey(name: "average_rating")
    String? averageRating,
    @JsonKey(name: "rating_count")
    int? ratingCount,
    @JsonKey(name: "related_ids")
    List<int>? relatedIds,
    @JsonKey(name: "parent_id")
    int? parentId,
    @JsonKey(name: "purchase_note")
    String? purchaseNote,
    @JsonKey(name: "categories")
    List<Category>? categories,
    @JsonKey(name: "images")
    List<Image>? images,
    @JsonKey(name: "menu_order")
    int? menuOrder,
    @JsonKey(name: "store")
    Store? store,
    @JsonKey(name: "tags")
    List<Category>? tags,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "slug")
    String? slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: "length")
    String? length,
    @JsonKey(name: "width")
    String? width,
    @JsonKey(name: "height")
    String? height,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
class Download with _$Download {
  const factory Download({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "file")
    String? file,
  }) = _Download;

  factory Download.fromJson(Map<String, dynamic> json) => _$DownloadFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "date_created")
    DateTime? dateCreated,
    @JsonKey(name: "date_created_gmt")
    DateTime? dateCreatedGmt,
    @JsonKey(name: "date_modified")
    DateTime? dateModified,
    @JsonKey(name: "date_modified_gmt")
    DateTime? dateModifiedGmt,
    @JsonKey(name: "src")
    String? src,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "alt")
    String? alt,
    @JsonKey(name: "position")
    int? position,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
    @JsonKey(name: "avatar")
    String? avatar,
    @JsonKey(name: "address")
    Address? address,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "street_1")
    String? street1,
    @JsonKey(name: "street_2")
    String? street2,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "zip")
    String? zip,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "state")
    String? state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
