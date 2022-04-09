import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:multipleblocinflutterapp/common/quote/quote_element.dart';

part 'quote.g.dart';

@JsonSerializable(explicitToJson: true)
class Quote extends Equatable {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'customerId')
  String customerId;

  @JsonKey(name: 'reference')
  String reference;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'note')
  String note;

  @JsonKey(name: 'elementsQuote')
  List<QuoteElement> elementsQuote;

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


  Quote({this.id, this.customerId, this.reference, this.description, this.note, this.elementsQuote, this.totalHt, this.totalTtc, this.vat, this.dateCreation });

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
  Map<String, dynamic> toJson() => _$QuoteToJson(this);


  @override
  Quote fromMap(Map map) {
    return Quote(
      id: map["id"],
      customerId: map["customerId"],
      reference: map["reference"],
      description: map["description"],
      elementsQuote: map["elementsQuote"],
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
      "customerId": customerId,
      "reference": reference,
      "description": description,
      "elementsQuote" : elementsQuote,
      "totalHt" : totalHt,
      "totalTtc" : totalTtc,
      "vat" : vat,
      "dateCreation" : dateCreation,
    };
  }

  @override
  List<Object> get props => [
    id,
    customerId,
    reference,
    description,
    elementsQuote,
    totalHt,
    totalTtc,
    vat,
    dateCreation,
  ];

  @override
  String toString() {
    return 'Quote {'
      'id: $id, '
      'customerId: $customerId, '
      'reference: $reference, '
      'description: $description, '
      'elementsQuote: $elementsQuote, '
      'totalHt: $totalHt, '
      'totalTtc: $totalTtc, '
      'vat: $vat, '
      'dateCreation: $dateCreation, '
    '}';
  }


  Quote createQuote(String id, String customerId, String reference, int dateCreation, String description, String note, List<QuoteElement> elementsQuote, double totalHt, double totalTtc, double vat  ) {
    final quote = Quote(id: id, customerId: customerId,reference: reference, dateCreation: dateCreation, description: description, note: note, elementsQuote: elementsQuote, totalHt: totalHt , totalTtc: totalTtc, vat: vat );
    return quote;
  }

  double calculAmountHt(double quantity, double amountHt) {
    var calcul = quantity * amountHt;
    return calcul;
  }


  double calculTVA(double amountHT, double percentTax) {
    var calcul  = amountHT + (amountHT * percentTax / 100);
    print(calcul);
    return calcul;
  }



  double calculTVATotal(double quantity, double amountHt, double percentTax) {

    var calcul  = (quantity * amountHt) + ((quantity * amountHt) * percentTax / 100);
    print(calcul);
    return calcul;
  }
}

