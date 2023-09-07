import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://th.bing.com/th/id/R.c37ec1d9b7804d930ea2436057171146?rik=sP1aSrHnjhIMeQ&riu=http%3a%2f%2fmfg.fhstp.ac.at%2fcms%2fwp-content%2fuploads%2f2018%2f09%2fflutter-io-770x400.jpg&ehk=4Bevut%2bORSf4QCWHSNFmjqLuDD48kiZclkETcfZmj%2f0%3d&risl=&pid=ImgRaw&r=0',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Flexible(
          child: Text(
            'Criação de apps Android e IOS com Flutter - Crie 16 Apps',
            maxLines: 2,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          'Professor _______',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
