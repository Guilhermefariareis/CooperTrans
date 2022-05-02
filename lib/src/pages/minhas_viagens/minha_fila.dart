import 'package:flutter/material.dart';

class MinhaFila extends StatefulWidget {
  const MinhaFila({Key? key}) : super(key: key);

  @override
  State<MinhaFila> createState() => _MinhaFilaState();
}

class _MinhaFilaState extends State<MinhaFila> {
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
        controller: new ScrollController(keepScrollOffset: false),
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
            child: const Text("He'd have you all unravel at the"),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Color.fromARGB(255, 251, 255, 0),
          ),
        ],
      ),
    );
  }
}
