// @rizalandy ~ PC

import 'package:flutter/material.dart';

class PageDropDownMenu extends StatefulWidget {

  @override
  _PageDropDownMenuState createState() => _PageDropDownMenuState();
}

class _PageDropDownMenuState extends State<PageDropDownMenu> {

  List<String> listKota = ["DKI Jakarta", "Malang", "Batu"];

  String nKota = "DKI Jakarta";
  late int nilaiKota;

  void pilihKota(String value){
    setState(() {
      nKota = value;
    });
  }

  // late String valueChoose;
  // List listItem = [
  //   "Item1", "Item2", "Item3"
  // ];

  @override
  Widget build(BuildContext context) {

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Page Dropdown Menu'),
    //   ),
    //   body: Center(
    //     child: DropdownButton(
    //       hint: Text("Selected Items: "),
    //       value: valueChoose,
    //       onChanged: (newValue){
    //         setState(() {
    //           valueChoose = newValue.toString();
    //         });
    //       },
    //       items: listItem.map((valueItem){
    //         return DropdownMenuItem(
    //             value: valueItem,
    //             child: Text(valueItem),
    //         );
    //       }).toList()
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dropdown Menu'),
        backgroundColor: Colors.deepOrange,
      ),

      body: Form(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text('Lokasi'),
                  DropdownButton(
                      onChanged: (value){
                        pilihKota(nKota);
                        nilaiKota = listKota.indexOf(nKota);
                      },

                      value: nKota,
                      items: listKota.map(
                          (String value){
                            return DropdownMenuItem(
                                child: Text(value),
                              value: value,
                            );
                          }
                      ).toList(),
                  )
                ],
              ),
            ),

        Container(
          child: MaterialButton(
            child: Text('submit'),
            color: Colors.brown,
            textColor: Colors.white,
            onPressed: (){
              print('Kota yang dipilih:' + "$nilaiKota" + nKota);
            },
          ),
        )
          ],
        ),
      ),
    );
  }
}

// @rizalandy ~ PC