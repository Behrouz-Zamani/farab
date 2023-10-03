
import 'package:flutter/material.dart';

class NiroHoze extends StatefulWidget {
  const NiroHoze({super.key});
  @override
  State<NiroHoze> createState() => _NiroHozeState();
}

class _NiroHozeState extends State<NiroHoze> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: const Text('حوزه نیرو')),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: size.height / 3,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              height: size.height / 1.8,
              color: Colors.yellow,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160,
                    color: Colors.black,
                  ),
                  Container(
                    width: 160,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
