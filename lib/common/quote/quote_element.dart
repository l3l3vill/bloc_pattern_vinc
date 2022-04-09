import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enum/enumVat.dart';
part 'quote_element.g.dart';



abstract class MapConvertible {
  Map<dynamic, dynamic> toMap();
  MapConvertible fromMap(Map<dynamic, dynamic> map);
}
@JsonSerializable(explicitToJson: true)
class QuoteElement extends Equatable {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'quoteId')
  String quoteId;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'quantity')
  double quantity;

  @JsonKey(name: 'unitPrice')
  double unitPrice;


  @JsonKey(name: 'totalHt')
  double totalHt;

  @JsonKey(name: 'totalTtc')
  double totalTtc;

  @JsonKey(name: 'vat')
  double vat;

  @JsonKey(name: 'totalTax')
  double totalTax;

  @JsonKey(name: 'dateCreation')
  int dateCreation;

  QuoteElement({this.id, this.quoteId, this.title, this.description,this.quantity, this.unitPrice ,this.totalHt, this.totalTtc, this.vat, this.totalTax, this.dateCreation}) ;

  factory QuoteElement.fromJson(Map<String, dynamic> json) => _$QuoteElementFromJson(json);
  Map<String, dynamic> toJson() => _$QuoteElementToJson(this);



  @override
  QuoteElement fromMap(Map map) {
    return QuoteElement(
      id: map["id"],
      quoteId: map["quoteId"],
      title: map["title"],
      description: map["description"],
      quantity: map["quantity"],
      unitPrice: map["unitPrice"],

      totalHt: map["totalHt"],
      totalTtc: map["totalTtc"],

      vat: map["vat"],
      dateCreation: map["dateCreation"],
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      //"objectId": objectId,
      "id": id,
      "quoteId": quoteId,
      "title": title,
      "description": description,
      "quantity": quantity,
      "unitPrice": unitPrice,
      "totalHt": totalHt,
      "totalTtc" : totalTtc,
      "vat": vat,
      "totalTax": totalTax,
      "dateCreation" : dateCreation,
    };
  }

  @override
  List<Object> get props => [
    id,
    quoteId,
    title,
    description,
    quantity,
    unitPrice,
    vat,
    totalHt,
    totalTax,
    totalTtc,
    dateCreation
  ];

  @override
  String toString() {
    return 'QuoteElement {'
      'id: $id, '
      'quoteId: $quoteId, '
      'title: $title, '
      'description: $description, '
      'quantity: $quantity, '
      'unitPrice: $unitPrice, '
      'totalHt: $totalHt, '
      'vat: $vat, '
      'totalTax: $totalTax, '
      'totalTtc: $totalTtc, '
      'dateCreation: $dateCreation, '
    '}';
  }
  QuoteElement createQuoteElement(String id, String quoteId, String title, String description, double quantity, double unitPrice, double totalHt, double totalTtc, double vat, double totalTax, int dateCreation) {
    final quoteElement = QuoteElement(id: id, quoteId: quoteId, title: title, description: description, quantity: quantity, unitPrice: unitPrice, totalHt: totalHt, totalTtc: totalTtc, vat: vat, totalTax: totalTax, dateCreation: dateCreation);
    return quoteElement;
  }
}