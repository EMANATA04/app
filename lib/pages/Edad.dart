import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2464999674.
class Edad extends StatelessWidget {
  const Edad({super.key});

  final edadFormulario = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.0, -0.0),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Color(0x1f000000),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Align(
                    alignment: Alignment(-0.1, -0.8),
                    child: Text(
                      "¿Qué edad tienes?",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: ListTile(
                        title: const Text('Entre 18 y 30 años'),
                        leading: Radio(
                          value: "Entre 18 y 30 años",
                          groupValue: edadFormulario,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      child: ListTile(
                        title: const Text('Entre 31 y 40 años'),
                        leading: Radio(
                          value: "Entre 31 y 40 años",
                          groupValue: edadFormulario,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      child: ListTile(
                        title: const Text('Entre 41 y 50 años'),
                        leading: Radio(
                          value: "Entre 31 y 40 años",
                          groupValue: edadFormulario,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      child: ListTile(
                        title: const Text('Más de 50 años'),
                        leading: Radio(
                          value: "Entre 31 y 40 años",
                          groupValue: edadFormulario,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
