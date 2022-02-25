import 'package:flutter/material.dart';
import 'package:quiz_app/soru_havuzu.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> sonucIconList = [];
  SoruHavuzu soruHavuzu = SoruHavuzu();
  void soruCevapla(bool userCevap) {
    setState(() {
      bool dogruCevap = soruHavuzu.soruCevapGetir();
      if (soruHavuzu.sorularBittiMi() == true) {
        if (dogruCevap == userCevap) {
          dogruCevapSayisi++;
          sonucIconList.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          sonucIconList.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBitir();
      } else {
        if (dogruCevap == userCevap) {
          dogruCevapSayisi++;
          sonucIconList.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          sonucIconList.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        soruHavuzu.sonrakiSoruGetir();
      }
    });
  }

  int dogruCevapSayisi = 0;
  void quizBitir() {
    Alert(
      context: context,
      type: AlertType.info,
      title: 'Quiz Bitti',
      desc: 'Dogru Sayisi $dogruCevapSayisi',
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          width: 200,
          child: const Text(
            'Ok',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        )
      ],
    ).show();
    soruHavuzu.reset();
    sonucIconList = [];
    dogruCevapSayisi = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  soruHavuzu.soruTextGetir(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )),
        Row(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      style: buildButtonStyle_goed(),
                      onPressed: () {
                        soruCevapla(true);
                      },
                      child: const Icon(
                        Icons.thumb_up,
                        size: 35,
                      ))),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                    style: buildButtonStyle_foutbutton(),
                    onPressed: () {
                      soruCevapla(false);
                    },
                    child: Icon(
                      Icons.thumb_down,
                      size: 35,
                    )),
              ),
            ),
          ],
        ),
        Expanded(
          child: Wrap(
            children: sonucIconList,
          ),
        )
      ],
    );
  }

  ButtonStyle buildButtonStyle_foutbutton() {
    return ButtonStyle(
        shape: MaterialStateProperty.all(BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
        side: MaterialStateProperty.all(
            BorderSide(color: Colors.black, width: 3)),
        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25)),
        backgroundColor: MaterialStateProperty.all(Colors.redAccent));
  }

  ButtonStyle buildButtonStyle_goed() {
    return ButtonStyle(
        shape: MaterialStateProperty.all(BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
        side: MaterialStateProperty.all(
            BorderSide(color: Colors.black, width: 3)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)),
        backgroundColor: MaterialStateProperty.all(Colors.green));
  }
}
