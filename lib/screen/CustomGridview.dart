import 'package:flutter/material.dart';

class PageCustomGridview extends StatefulWidget {
  @override
  _PageCustomGridviewState createState() => _PageCustomGridviewState();
}

class _PageCustomGridviewState extends State<PageCustomGridview> {

  //deklarasi data list
  List<Container> daftarMakananKorea = [];

  var itemMakanan = [
    {"nama": "Korea 1" , "gambar" : "korea-satu.jpg", "Keterangan" : "Ini makanan korea satu enak"},
    {"nama": "Korea 2" , "gambar" : "korea-dua.jpg", "Keterangan" : "Ini makanan korea dua enak"},
    {"nama": "Korea 3" , "gambar" : "korea-tiga.jpg", "Keterangan" : "Ini makanan korea tiga enak"},
    {"nama": "Korea 4" , "gambar" : "korea-empat.jpg", "Keterangan" : "Ini makanan korea empat enak"},
    {"nama": "Korea 5" , "gambar" : "korea-lima.jpg", "Keterangan" : "Ini makanan korea lima enak"},
    {"nama": "Korea 6" , "gambar" : "korea-enam.jpeg", "Keterangan" : "Ini makanan korea enam enak"},
  ];

  //method
  _buatDataListMakanan() async{
    for(var i=0; i<itemMakanan.length; i++){
      final dataMakanan = itemMakanan[i];

      final gambarMakanan = dataMakanan["gambar"];
      daftarMakananKorea.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap: (){

            },
            child: Column(
              children: [
                Hero(
                    tag: dataMakanan["nama"]!,
                    child: Image.asset('gambar/$gambarMakanan', height: 85.0, width: 125, fit: BoxFit.contain,),
                ),

                Padding(
                    padding: EdgeInsets.all(10)
                ),

                Text(dataMakanan['nama']!, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ));
    }
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataListMakanan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps Makanan Korea'),
        backgroundColor: Colors.deepOrange,
      ),
      
      body: GridView.count(crossAxisCount: 2, children: daftarMakananKorea,),
    );
  }
}
