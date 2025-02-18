import 'package:desing_system/design_system.dart';
import 'package:example/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: DesignColors.strongPrimary,
        leading: IconButton(
          icon: 
            Icon(Icons.undo,
            color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Atoms'
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: DesignColors.strongPrimary),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Text(
              'A T O M S',
              style: TextStyle(
                fontFamily: DesignFoundationTypo.familyHeadings,
                color: DesignColors.primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Inventario de componentes atómicos',
                style: TextStyle(
                  fontFamily: DesignFoundationTypo.familyHeadings,
                  color: DesignColors.light,
                  fontSize: 24.0,
                  fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 33.0),

                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: DesignColors.statusSuccess,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                        title: const Text(
                          'DesignButton',
                          style: TextStyle(
                            fontFamily: DesignFoundationTypo.familyHeadings,
                            color: DesignColors.light,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: const Text(
                          'A customizable button widget with primary and secondary styles.',
                          style: TextStyle(
                            fontFamily: DesignFoundationTypo.familyHeadings,
                            color: DesignColors.light,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                        trailing: DesignButton(type: ButtonType.secondary, text: 'ver más', onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.atomButton);
                        }),
                        onTap: () {
                          
                        }, 
                      ),
                    ],
                  )
                  )

          ],
        ),
      ),
    );
  }
}
