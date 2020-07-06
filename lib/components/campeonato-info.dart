import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ifsports/pages/team-page.dart';

class CampeonatoInfo extends StatelessWidget {
  final String competicao;
  final String data;
  final String local;
  final String imagem;
  final Color cor;

  CampeonatoInfo(this.competicao, this.data, this.local, this.imagem, this.cor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: cor,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => TeamPage(),
              ),
            );
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(imagem),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(
                    competicao,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Divider(
                height: 20,
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '\nDATA: ' + data + '\nLOCAL: ' + local,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              ButtonTheme(
                buttonColor: Colors.greenAccent,
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Icon(
                        Icons.people,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => TeamPage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
