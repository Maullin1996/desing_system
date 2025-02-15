import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

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
        decoration: const BoxDecoration(
          color: DesignColors.strongPrimary
        ),
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
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 184,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      ],
                    ),
                  )
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
