import 'package:burc_rehber/burc_detay.dart';
import 'package:burc_rehber/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        // ! border ekliyor açıklamayı oku canım.
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/burcDetay',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              'assets/images/' + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              listelenenBurc.burchTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
