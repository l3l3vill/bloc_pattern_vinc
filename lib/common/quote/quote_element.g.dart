// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteElement _$QuoteElementFromJson(Map<String, dynamic> json) {
  return QuoteElement(
    id: json['id'] as String,
    quoteId: json['quoteId'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    quantity: (json['quantity'] as num)?.toDouble(),
    unitPrice: (json['unitPrice'] as num)?.toDouble(),
    totalHt: (json['totalHt'] as num)?.toDouble(),
    totalTtc: (json['totalTtc'] as num)?.toDouble(),
    vat: (json['vat'] as num)?.toDouble(),
    totalTax: (json['totalTax'] as num)?.toDouble(),
    dateCreation: json['dateCreation'] as int,
  );
}

Map<String, dynamic> _$QuoteElementToJson(QuoteElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quoteId': instance.quoteId,
      'title': instance.title,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalHt': instance.totalHt,
      'totalTtc': instance.totalTtc,
      'vat': instance.vat,
      'totalTax': instance.totalTax,
      'dateCreation': instance.dateCreation,
    };
