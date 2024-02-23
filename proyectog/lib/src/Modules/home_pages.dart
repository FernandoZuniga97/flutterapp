import 'package:services_google/src/Modules/information_p.dart';
import 'package:services_google/src/Modules/privacy.dart';
import 'package:services_google/src/Widgets/custom_icon.dart';
import 'package:services_google/src/Modules/major.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            text: 'Cuenta de',
            style: TextStyle(color: Colors.black, fontSize: 22.5),
            children: [
              TextSpan(
                text: ' Google',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
              )
            ]
          ),
        ),
        backgroundColor: const Color.fromARGB(230, 228, 229, 230),
        actions: [
          Row(
            children: [
              CustomIcon(
                icon: Icons.help_outline,
                onPressed: () {},
              ),
              CustomIcon(
                icon: Icons.search_outlined,
                onPressed: () {},
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6700)),
                child: Image.asset('assets/images/pf.png', width: 60, height: 41),
              ),
            ],
          ),
        ],
        bottom: const TabBar(
          isScrollable: true,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              child: Text('Pagina Principal'),
            ),
            Tab(
              child: Text('Información Personal'),
            ),
            Tab(
              child: Text('Datos y Privacidad'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Container( 
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Major(),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const InformationP(),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Privacy(),
          ),
        ],
      ),
    ),
  );
}
}
