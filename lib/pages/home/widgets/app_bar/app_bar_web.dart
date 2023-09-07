import 'package:flutter/material.dart';
import 'package:site_flutter_web/pages/home/widgets/app_bar/web_app_bar_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 32),
          const WebAppBarContent(),
          const SizedBox(
            width: 32
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.white, width: 2),
                ),
              ),
              child: const Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      toolbarHeight: 72,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
