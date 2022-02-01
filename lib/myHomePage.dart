import 'package:burc_rehber/burc_item.dart';
import 'package:burc_rehber/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:burc_rehber/data/strings.dart';

class MyHomePage extends StatelessWidget {
  late List<Burc> tumBurclar;
  MyHomePage({Key? key}) : super(key: key) {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode),
          ),
        ],
        backgroundColor: Colors.teal.shade500,
        title: const Text(
          'Burçlar Listesi',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(
              listelenenBurc: tumBurclar[index],
            );
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png',
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png');
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
