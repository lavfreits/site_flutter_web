import 'package:flutter/material.dart';
import 'package:site_flutter_web/pages/breakpoints.dart';

import '../custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1200) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.2,
                child: Image.network(
                  'https://th.bing.com/th/id/R.c37ec1d9b7804d930ea2436057171146?rik=sP1aSrHnjhIMeQ&riu=http%3a%2f%2fmfg.fhstp.ac.at%2fcms%2fwp-content%2fuploads%2f2018%2f09%2fflutter-io-770x400.jpg&ehk=4Bevut%2bORSf4QCWHSNFmjqLuDD48kiZclkETcfZmj%2f0%3d&risl=&pid=ImgRaw&r=0',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                      elevation: 8,
                      color: Colors.black,
                      child: Container(
                        width: 450,
                        padding: const EdgeInsets.all(22),
                        child: const Column(
                          children: [
                            Text(
                              'Aprenda flutter com esse curso',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Bora aprender flutter com o professor! Cursos por apenas R\$77,90. Qualidade garantida.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(height: 16),
                            CustomSearchField()
                          ],
                        ),
                      )))
            ],
          ),
        );
      }
      if (maxWidth >= mobileBreakPoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  'https://th.bing.com/th/id/R.c37ec1d9b7804d930ea2436057171146?rik=sP1aSrHnjhIMeQ&riu=http%3a%2f%2fmfg.fhstp.ac.at%2fcms%2fwp-content%2fuploads%2f2018%2f09%2fflutter-io-770x400.jpg&ehk=4Bevut%2bORSf4QCWHSNFmjqLuDD48kiZclkETcfZmj%2f0%3d&risl=&pid=ImgRaw&r=0',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  elevation: 8,
                  color: Colors.black,
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.all(22),
                    child: const Column(
                      children: [
                        Text(
                          'Aprenda flutter com esse curso',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bora aprender flutter com o professor! Cursos por apenas R\$77,90. Qualidade garantida.',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        CustomSearchField()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              'https://th.bing.com/th/id/R.c37ec1d9b7804d930ea2436057171146?rik=sP1aSrHnjhIMeQ&riu=http%3a%2f%2fmfg.fhstp.ac.at%2fcms%2fwp-content%2fuploads%2f2018%2f09%2fflutter-io-770x400.jpg&ehk=4Bevut%2bORSf4QCWHSNFmjqLuDD48kiZclkETcfZmj%2f0%3d&risl=&pid=ImgRaw&r=0',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Aprenda flutter no seu tempo',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Bora aprender flutter com o professor! Cursos por apenas R\$77,90. Qualidade garantida.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 15),
                CustomSearchField()
              ],
            ),
          )
        ],
      );
    });
  }
}
