// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return Quote(
    id: json['id'] as String,
    customerId: json['customerId'] as String,
    reference: json['reference'] as String,
    description: json['description'] as String,
    note: json['note'] as String,
    elementsQuote: (json['elementsQuote'] as List)
        ?.map((e) =>
            e == null ? null : QuoteElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalHt: (json['totalHt'] as num)?.toDouble(),
    totalTtc: (json['totalTtc'] as num)?.toDouble(),
    vat: (json['vat'] as num)?.toDouble(),
    dateCreation: json['dateCreation'] as int,
  )..totalTax = (json['totalTax'] as num)?.toDouble();
}

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'reference': instance.reference,
      'description': instance.description,
      'note': instance.note,
      'elementsQuote':
          instance.elementsQuote?.map((e) => e?.toJson())?.toList(),
      'totalHt': instance.totalHt,
      'totalTtc': instance.totalTtc,
      'vat': instance.vat,
      'totalTax': instance.totalTax,
      'dateCreation': instance.dateCreation,
    };
