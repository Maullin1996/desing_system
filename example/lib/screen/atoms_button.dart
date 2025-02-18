import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

class AtomsButton extends StatelessWidget {
  const AtomsButton({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: DesignColors.strongSecondary,
      body: Container(
        padding: EdgeInsets.only(top: 44),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24),
              child: IconButton(
                icon: 
                  Icon(Icons.undo,
                  color: Colors.white),
                  onPressed: () => Navigator.pop(context),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                width: _width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
              ),
              child: Column(
                children: [
                  Container(
                    transform: Matrix4.translationValues(0.0, -22.0, 0.0),
                    height: 44,
                    width: 244,
                    decoration: BoxDecoration(
                      color: DesignColors.statusSuccess,
                      borderRadius: BorderRadius.circular(16.0)
                    ),
                    child: Center(
                      child: Text(
                        'Inventario de Botones',
                        style: TextStyle(
                          fontFamily: DesignTypography.familySourceSans3,
                          color: Color.fromRGBO(45, 49, 66, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Botón Primario Large',
                    style: TextStyle(
                      fontFamily: DesignTypography.familySourceSans3,
                      color: Color.fromRGBO(45, 49, 66, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )),
                  Container(
                    width: _width,
                    height: 213,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 247, 247, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        DesignButton(
                          type: ButtonType.primary, 
                          text: 'Button',
                          onPressed: () {
                            
                          },
                          )
                      ],
                    ),
                  )
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
