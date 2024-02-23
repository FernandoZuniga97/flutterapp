import 'package:flutter/material.dart';

class Major extends StatelessWidget {
  const Major({super.key});

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return const Column(
            children: [
              Opcion1(),
              Opcion2(),
              Extra(),
              Opcion3(),
            ],
          );
        },
      ),
    );
  }
}

class Opcion1 extends StatelessWidget {
  const Opcion1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(thickness: 0.5, color: Colors.black),
            Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              margin: EdgeInsets.zero,
              child: ListTile(
                title: const Text('Tu cuenta está protegida'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('La verificación de seguridad revisó tus cuentas y no encontró acciones recomendadas.'),
                    RichText(
                      text: const TextSpan(
                        text: '\n Verificar la verificación de seguridad',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                trailing: Image.asset('assets/images/check.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Opcion2 extends StatelessWidget {
  const Opcion2({super.key});
  @override
Widget build(BuildContext context) {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 0.5, color: Colors.black),
          Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
            margin: EdgeInsets.zero,
            child: ListTile(
              title: const Text('Verificación de privacidad'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Elije la configuración indicada para ti con esta guía paso a paso.'),
                  RichText(
                    text: const TextSpan(
                      text: '\n Realizar la verificación de seguridad',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/check2.png'),
            ),
          ),
          const Divider(thickness: 0.5, color: Colors.black),
        ],
      ),
    ),
  );
}
}

class Extra extends StatelessWidget {
  const Extra({super.key});
  @override
Widget build(BuildContext context) {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child: const Column(
      children: [
        ListTile(title: Text('¿Buscas otra información?')),
        ListTile(
          leading: Icon(Icons.search_outlined),
          title: Text('Buscar en la cuenta de Google'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.help_outline), 
          title: Text('Ver las opciones de ayuda'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.announcement_outlined), 
          title: Text('Enviar comentarios'),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    ),
  );
}
}

class Opcion3 extends StatelessWidget {
  const Opcion3({super.key});

  @override
Widget build(BuildContext context) {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 0.5, color: Colors.black),
          Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
            margin: EdgeInsets.zero,
            child: ListTile(
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y seguridad de tus datos.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        'Más información',
                        style: TextStyle(color: Colors.blue, fontSize: 12.5),
                      ),
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/check2.png'),
            ),
          ),
        ],
      ),
    ),
  );
}
}