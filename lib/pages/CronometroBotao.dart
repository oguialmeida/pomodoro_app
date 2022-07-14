import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 15,
          )),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: Icon(
              icone,
              size: 30,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
