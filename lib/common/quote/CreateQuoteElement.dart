import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orion_delivery/bloc/bloc_provider.dart';
import 'package:orion_delivery/common/alert_helper.dart';
import 'package:orion_delivery/common/design/app_colors.dart';
import 'package:orion_delivery/common/design/app_size.dart';
import 'package:orion_delivery/common/widgets/padding_child.dart';
import 'package:orion_delivery/model/quote/quote.dart';
import 'package:orion_delivery/model/quote/quote_element.dart';
import 'package:orion_delivery/screens/intervention_details/quoteCreation/CreateQuoteElementBloc.dart';
import 'package:orion_delivery/services/remote_db/mango_db_services.dart';

class CreateQuoteElement extends StatefulWidget {
  const CreateQuoteElement({Key key}) : super(key: key);

  @override
  _CreateQuoteElementState createState() => _CreateQuoteElementState();
}

class _CreateQuoteElementState extends State<CreateQuoteElement> {
  final _formCreateQuoteElementKey = GlobalKey<FormState>();
  String _chosenValue;
  String _taxValue;
  double _taxValueDouble;
  double _amountHtDouble;

  AppColors appColors = AppColors();
  AppSize appSize = AppSize();
  final AlertHelper alertHelper = AlertHelper();
  final MongoDB mongoDB = MongoDB();
  Quote quote = Quote();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _priceHtController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  double _quantity;
  String _totalTTc;
  String _title;
  String _description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quantity = 0.00;
   // _quantityController.text = _quantity.toString();
  }
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CreateQuoteElementBloc>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Créer votre présentation",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: BackButton(
            color: Colors.black
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.done,
              color: Colors.green,
            ),
            onPressed: () async {
              //if (_formCreateQuoteElementKey.currentState.validate()) {
               // Navigator.pop(context, _descriptionText);
                print("_title ${_title}");
                print("_description ${_description}");
                print("_taxValue ${_taxValue.toString()}");
                print("_taxValueDouble ${_taxValueDouble.toString()}");
                print("_amountHtDouble ${_amountHtDouble.toString()}");
                print("_totalTTc ${_totalTTc}");
                final quoteElement = QuoteElement();
                quoteElement.title = _title;



             // }
            },
          ),
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
        },
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: SingleChildScrollView(
            child: PaddingWith(
                widget: Form(
                  key: _formCreateQuoteElementKey,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _titleController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        autofocus:true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          labelText: "Libellé de l'article",
                          labelStyle: TextStyle(
                            color:  Colors.black26,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _titleController.clear();
                                _title = null;
                              });

                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.black12,
                            ),
                          ),
                          fillColor: AppColors.zoneText,
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                        ),
                        /*
                        validator: (value) {
                          _descriptionController.text = value;
                          //_descriptionText = value;
                        },
                         */
                        onChanged: (value) {
                          setState(() {
                            if (value != null) {
                              print("value ${value.toString()}");
                              _title = value;
                            }
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _descriptionController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        // initialValue: _emailLogin,
                        autofocus:true,
                        textInputAction: TextInputAction.newline,
                        // maxLines: convertAppSize(appSize.heightScreen(context), 3),
                        decoration: InputDecoration(
                          labelText: "Description de l'article",
                          labelStyle: TextStyle(
                            color:  Colors.black26,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _descriptionController.clear();
                                _description = null;
                              });
                            },
                            icon: Icon(Icons.clear,
                              color: Colors.black12,
                            ),
                          ),
                          fillColor: AppColors.zoneText,
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                        ),
                        /*validator: (value) {
                          _descriptionController.text = value;
                          //_descriptionText = value;
                        },*/
                        /*
                          final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (value.isEmpty) {
                            _toggle();
                            return 'Ce champ ne peut être vide';
                          } else if (!regex.hasMatch(value)) {
                            _toggle();
                            return "Votre email n'est pas au bon format";
                          }
                        */
                        onChanged: (value) {
                          setState(() {
                            if (value != null) {
                              print("value ${value.toString()}");
                              _description = value;
                            }
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _priceHtController,
                        keyboardType: TextInputType.number,
                        maxLines: 1,
                        autofocus:true,
                        textInputAction: TextInputAction.done,
                        // maxLines: convertAppSize(appSize.heightScreen(context), 3),
                        decoration: InputDecoration(
                          labelText: "Prix Unitaires Hors taxes",
                          labelStyle: TextStyle(
                            color:  Colors.black26,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {

                                setState(() {
                                  _priceHtController.clear();
                                  _amountHtDouble = 0;
                                });
                              });
                            },
                            icon: Icon(Icons.clear,
                              color: Colors.black12,
                            ),
                          ),
                          fillColor: AppColors.zoneText,
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(25.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                        ),
                        onChanged: (value)  {

                          setState(() {
                            _amountHtDouble = 0;
                            var myDouble = double.parse(value);





                            _amountHtDouble = myDouble;

                          });

                        },
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: appSize.widthScreen(context),
                        height: appSize.heightScreen(context) / 11,

                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: AppColors.zoneText,
                        ),
                        child: DropdownButton<String>(
                          dropdownColor: AppColors.zoneText,
                          focusColor: AppColors.zoneText,
                          value: _taxValue,
                          elevation: 2,
                          style: TextStyle(color: Colors.blue),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            '20 %',
                            '10 %',
                            '5.5 %',
                            '2.1 %',
                            '0 %',
                            '0 % - Exonération',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text( "Choisir la TVA",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              print("value ${value}");
                              _taxValue = value;
                              print(_taxValue.toString());
                              print(_taxValue.toString());
                              if(value == "20 %") {
                                _taxValueDouble = 20.0;
                                print(_taxValueDouble.toString());
                                bloc.sinkTVA.add(_taxValueDouble);
                                return;
                              } else if(value == "10 %") {
                                _taxValueDouble = 10.0;
                                print(_taxValueDouble.toString());
                                bloc.sinkTVA.add(_taxValueDouble);
                                return;
                              } else if(value == "5.5 %") {
                                _taxValueDouble = 5.5;
                                print(_taxValueDouble.toString());
                                bloc.sinkTVA.add(_taxValueDouble);
                                return;
                              } else if(value == "2.1 %") {
                                _taxValueDouble = 2.1;
                                print(_taxValueDouble.toString());
                                bloc.sinkTVA.add(_taxValueDouble);
                                return;
                              } else {
                                _taxValueDouble = 0.0;
                                print(_taxValueDouble.toString());
                                bloc.sinkTVA.add(_taxValueDouble);
                              }
                            });
                           // bloc.calculResult(bloc.streamTVA);

                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _quantityController,
                              keyboardType: TextInputType.phone,
                              maxLines: 1,
                              autofocus:true,
                              textInputAction: TextInputAction.done,
                              // maxLines: convertAppSize(appSize.heightScreen(context), 3),
                              decoration: InputDecoration(
                                labelText: "Quantité",
                                labelStyle: TextStyle(
                                  color:  Colors.black,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: ()  {
                                    _quantityController.clear();
                                    _quantity = 0;
                                  },
                                  icon: Icon(Icons.clear,
                                  color: Colors.black12,
                                  ),
                                ),
                                fillColor: AppColors.zoneText,
                                filled: true,
                                border: InputBorder.none,
                                enabledBorder:  OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(25.0),
                                  borderSide:  BorderSide(color: Colors.white),
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:  BorderSide(color: Colors.white),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(25.0),
                                  borderSide:  BorderSide(color: Colors.white),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(25.0),
                                  borderSide:  BorderSide(color: Colors.white),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  if (value != null) {
                                    var myDouble = double.parse(value);
                                    _quantity = myDouble;
                                    // final regex = RegExp("[^0-9]");
                                    print(_quantityController.text);

                                  }
                                });

                              },
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: appSize.widthScreen(context) / 8,
                                      height: appSize.widthScreen(context) / 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.zoneText,
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                          size: 28,
                                        ),
                                          onPressed: () {
                                          setState(() {

                                            if (_quantity <= 0) {
                                              return;
                                            } else {
                                              _quantity -= 1.00;
                                              var quantityToDouble =  _quantity;
                                              _quantityController.text = _quantity.toInt().toString();
                                              print(_quantityController.text);
                                            }

                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                Card(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: appSize.widthScreen(context)/ 8,
                                    height: appSize.widthScreen(context)/ 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.zoneText,
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 28,
                                      ),
                                      onPressed: () async {
                                        print(" +");
                                       // bloc.increment();
                                        setState(() {
                                          if(_quantity == null) {
                                            _quantity = 1.00;
                                          } else {
                                            _quantity += 1.00;
                                            _quantityController.text = _quantity.toInt().toString();
                                            print(_quantityController.text);
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: appSize.widthScreen(context),
                        height: 0.5,
                        color: Colors.black
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total TTC",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),

                          Row(
                            children: [
                              _quantity != null || _amountHtDouble != null || _taxValueDouble != null ?
                              Text("${calculTotal (_quantity, _amountHtDouble, _taxValueDouble)}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                              : Text("N/C",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(width: 5),
                              Text("€",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                top: 20.0,
                left: 30.0,
                bottom: 10.0,
                right: 30.0
            ),
          ),
        ),
      ),
    );
  }
 String calculTotal (_quantity, _amountHtDouble, _taxValueDouble) {

    if (_quantity == null) {
      return "N/C"    ;
    } else if (_amountHtDouble == null) {
      return "N/C";
    } else if (_taxValueDouble == null) {
      return "N/C";
    } else  {
      var calcul = quote.calculTVATotal(_quantity, _amountHtDouble, _taxValueDouble);

      _totalTTc = double.parse((calcul).toStringAsFixed(2) ).toString();
      return _totalTTc;
    }

    /*
    * setState(() {
      return Text("${text}",
        style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500
        ),
      );
    });
    *
    * */

  }
}


