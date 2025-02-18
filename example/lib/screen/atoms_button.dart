import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

class AtomsButton extends StatelessWidget {
  const AtomsButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: DesignColors.strongSecondary,
        leading: IconButton(
          icon: Icon(Icons.undo, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: DesignColors.strongSecondary,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              padding: const EdgeInsets.only(bottom: 40),
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Botón Primario Large',
                      style: TextStyle(
                        fontFamily: DesignTypography.familySourceSans3,
                        color: Color.fromRGBO(45, 49, 66, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: width,
                      height: 213,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 247, 247, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DesignButton(
                            type: ButtonType.primaryLarge,
                            text: 'Button',
                            onPressed: () {},
                          ),
                          DesignButton(
                            type: ButtonType.primaryLarge,
                            text: 'Button',
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),

                    Text(
                      'Botón Primario Medium',
                      style: TextStyle(
                        fontFamily: DesignTypography.familySourceSans3,
                        color: Color.fromRGBO(45, 49, 66, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: width,
                      height: 213,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 247, 247, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DesignButton(
                            type: ButtonType.primaryMedium,
                            text: 'Button',
                            onPressed: () {},
                          ),
                          DesignButton(
                            type: ButtonType.primaryMedium,
                            text: 'Button',
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Botón Primario Small',
                      style: TextStyle(
                        fontFamily: DesignTypography.familySourceSans3,
                        color: Color.fromRGBO(45, 49, 66, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: width,
                      height: 213,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 247, 247, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DesignButton(
                            type: ButtonType.primarySmall,
                            text: 'Button',
                            onPressed: () {},
                          ),
                          DesignButton(
                            type: ButtonType.primarySmall,
                            text: 'Button',
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 44,
                width: 244,
                decoration: BoxDecoration(
                  color: DesignColors.statusSuccess,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Center(
                  child: Text(
                    'Inventario de Botones',
                    style: TextStyle(
                      fontFamily: DesignTypography.familySourceSans3,
                      color: Color.fromRGBO(45, 49, 66, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),)
            )
        ],
      ),
    );
  }
}
