import 'package:flutter/material.dart';
import 'package:information_card/product/counter_hello_button.dart';
import 'package:information_card/product/language/language.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;
  

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageItems.statefullLearnTitle,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent.shade400,
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _deincrementButton(),
          _incrementButton(),
        ],
      ),
      backgroundColor: Colors.greenAccent.shade100,
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline3,
          )),
          const Placeholder(),
          const CounterHelloButton(),
          
        ],
      ),
    );
  }

  Padding _incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: (() {
          _updateCounter(true);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    print("tiklandi");
    return FloatingActionButton(
      onPressed: (() {
        _updateCounter(false);
      }),
      child: const Icon(Icons.remove),
    );
  }
}



//StatelessWidget
//Tanım: Durumu değişmeyen, statik bir widget türüdür. Widget oluşturulduktan sonra herhangi bir veri veya durum değişikliği widget'ın yeniden çizilmesine neden olmaz.
//Kullanım Alanı:
//Sabit tasarımlar (örneğin, metinler, ikonlar, butonlar).
//Dinamik olmayan içerik.
//Performans: Daha hızlıdır, çünkü yeniden çizim ihtiyacı olmadığından ek yük oluşturmaz.

//StatefulWidget
//Tanım: Durumu değişebilen ve bu değişikliğe göre yeniden oluşturulabilen bir widget türüdür. Widget'ın state'i değiştiğinde setState() metodu çağrılır ve widget yeniden çizilir.
//Kullanım Alanı:
//Kullanıcı etkileşimleri (örneğin, tıklamalar, kaydırma, formlar).
//Zamanla değişen veriler (örneğin, sayaç, API çağrısı sonuçları).
//Performans: Daha fazla bellek ve işlem gücü kullanır, çünkü durum yönetimi için ek işlevler içerir.