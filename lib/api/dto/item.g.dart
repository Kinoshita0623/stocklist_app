// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDTO _$_$_ItemDTOFromJson(Map<String, dynamic> json) {
  return _$_ItemDTO(
    id: json['id'] as int,
    name: json['name'] as String,
    imagePath: json['image_path'] as String,
    homeId: json['home_id'] as int,
    owners: (json['owners'] as List<dynamic>?)
        ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    stocks: (json['stocks'] as List<dynamic>?)
        ?.map((e) => StockDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    stockIds:
        (json['stock_ids'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ItemDTOToJson(_$_ItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_path': instance.imagePath,
      'home_id': instance.homeId,
      'owners': instance.owners,
      'stocks': instance.stocks,
      'stock_ids': instance.stockIds,
    };
