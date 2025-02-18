import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:desing_system/design_system.dart';
import 'package:example/config/routes/app_routes.dart';


final Uri _urlYouTubeChannel = Uri.parse('https://youtube.com/c/weincode');
final Uri _urlWeinDs = Uri.parse(
  'https://zeroheight.com/1dfd58e88/p/82f7b2-weinds',
);
final Uri _urlWeinDsFund = Uri.parse(
  'https://zeroheight.com/1dfd58e88/p/0849c4-colors/b/90ae17',
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: DesignSizes.sizeXS,
        backgroundColor: DesignColors.strongPrimary,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: DesignColors.strongPrimary),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Design System',
                    style: TextStyle(
                      fontFamily: DesignTypography.familySourceSans3,
                      color: DesignColors.light,
                      fontSize: DesignFoundationTypo.fontSizeH4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 184,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DesignStyledCard(
                          title: 'Atom',
                          buttonText: 'Conocer más',
                          illustrationType: DesignIllustrationType.atom,
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.atoms);
                          },
                        ),
                        const SizedBox(width: 10),
                        DesignStyledCard(
                          title: 'Molecules',
                          buttonText: 'Conocer más',
                          illustrationType: DesignIllustrationType.molecules,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        DesignStyledCard(
                          title: 'organisms',
                          buttonText: 'Conocer más',
                          illustrationType: DesignIllustrationType.organisms,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        DesignStyledCard(
                          title: 'Templates',
                          buttonText: 'Conocer más',
                          illustrationType: DesignIllustrationType.templates,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        DesignStyledCard(
                          title: 'action',
                          buttonText: 'Conocer más',
                          illustrationType: DesignIllustrationType.action,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: DesignColors.light,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ListView(
                  children: [
                    const Text('Recomendado',
                    style: TextStyle(
                      fontFamily: DesignFoundationTypo.familyHeadings,
                      fontWeight: FontWeight.bold,
                      color: DesignColors.strongPrimary,
                      fontSize: DesignFoundationTypo.fontSizeH4
                    ),
                    ),
                    const SizedBox(height: 28),
                    DesignActionCard(
                      title: 'Canal de Youtube', 
                      buttonText: 'Aprende más!', 
                      description: 'Visita nuestro canal de YouTube para más contenido.', 
                      illustrationType: DesignIllustrationType.programming, 
                      cardType: DesignActionCardType.primary,
                      onPressed: () => launchUrl(_urlYouTubeChannel)),
                    const SizedBox(height: 12),
                    DesignActionCard(
                      title: 'Fundamentos', 
                      buttonText: 'Aprende más!', 
                      description: 'Conoce más sobre nuestro sistema de diseño.', 
                      illustrationType: DesignIllustrationType.designWhite, 
                      cardType: DesignActionCardType.secondary,
                      onPressed: () => launchUrl(_urlWeinDsFund)),
                    const SizedBox(height: 12),
                    DesignActionCard(
                      title: 'Documentación', 
                      buttonText: 'Aprende más!', 
                      description: 'Conoce la documentación de nuestro sistema de diseño.', 
                      illustrationType: DesignIllustrationType.consulting, 
                      cardType: DesignActionCardType.tertiary,
                      onPressed: () => launchUrl(_urlWeinDs)),
                  ],
                ),
                ),
            )
            )
          
          ],
        ),
      ),
    );
  }
}
