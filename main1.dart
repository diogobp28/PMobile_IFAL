import 'package:flutter/material.dart';
import 'listas.dart';

void main() => runApp(CaixaDeEntrada());


class CaixaDeEntrada extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                  Text("TUDO"),
                  Text("PLANTÃO"),
                  Text("MENSAGEM"), 
                  Text("AVISO"),
                  Tab(icon: Icon(Icons.auto delete))
                ],
            ),
            
            title: Text('GUIAS TESTE - CAIXA DE ENTRADA'),
          
          ),
          body: TabBarView(
            children: [
                new Container( // GUIA TUDO
                  color: Colors.blue,
                  child: Lista.buildBody(), 
                ),

                new Container( // GUIA PLANTÃO
                  color: Colors.blueGrey,
                  child: Text("PLANTÃO PLANTÃO PLANTÃO"),
                ),

                new Container( // GUIA MENSAGEM
                  color: Colors.blue,
                  child: Text("MENSAGEM MENSAGEM MENSAGEM"),
                ),

                new Container( // GUIA AVISOS
                  color: Colors.blueGrey,
                  child: Text("AVISOS AVISOS AVISOS"),
                ),

                new Container( // GUIA APAGADOS
                  color: Colors.teal,
                  child: new Center(
                  child: new Text("GUIA VAZIA - APAGADOS", style: TextStyle(),
                  ),
                  ),
                )
           ],
          ),
        ),
      ),
    );
  }
}