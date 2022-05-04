import 'package:flutter/material.dart';

class MinhaViagem extends StatefulWidget {
  const MinhaViagem({Key? key}) : super(key: key);

  @override
  State<MinhaViagem> createState() => _MinhaViagemState();
}

class _MinhaViagemState extends State<MinhaViagem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 5,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text("04/01/22 \n (ACEITA)"),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('SAO CARLOS-SP -> PB-ALHANDRA 2674 Km'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text(
                'Marcou em: 30/12/21 \n Viajou em: 04/01/2022 \n Diferença em dias: 05 dia(s)'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Obs: ENTREGA DIA 11/01/2022 06H - DT 13771523'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('ROTA'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text("29/01/22 \n (ACEITA)"),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('SAO CARLOS-SP -> PB-CONDE - 2687 Km'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text(
                'Marcou em: 20/01/2022 \n Viajou em: 29/01/2022 \n Diferença em dias: 9 dia(s)'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child:
                const Text('Obs: ENTREGA DIA 07/02/2022 07:00 HRS DT 13793731'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('ROTA'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text("18/02/2022 \n (RECUSA)"),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('RIO CLARO-SP -> SP-RIO CLARO - 0Km'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text(
                'Marcou em: 17/02/2022 \n viajou em: 18/02/2022 \n Diferença em dias: ---- dia(s)'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Obs: CARROSSEL DENTRO DE RIO CLARO-SP'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('ROTA'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
        ],
      ),
    );
  }
}
