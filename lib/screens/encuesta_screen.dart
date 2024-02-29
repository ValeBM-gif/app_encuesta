import 'package:app_encuesta/constants.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

List<String> secciones = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13'
];

class EncuestaScreen extends StatefulWidget {
  const EncuestaScreen({super.key});

  @override
  State<EncuestaScreen> createState() => _EncuestaScreenState();
}

class _EncuestaScreenState extends State<EncuestaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Text('Secciones'),
        SizedBox(
          height: 500,
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(13, (index) {
                    print('object');
                    return Text('a: $index');
                  }),
                );
              },
              separatorBuilder: (context, int) {
                return const Divider(
                  color: Colors.black,
                );
              },
              itemCount: 2),
        ),
      ],
    ));
  }
}
