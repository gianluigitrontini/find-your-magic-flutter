import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(padding: const EdgeInsets.all(16), children: const [
            DecoratedButton(
              title: 'Inizia a Esplorare',
              subtitle:
                  'Esplora un mondo di possibilità tramite la realtà aumentata',
              imageUri:
                  'https://cdn.dribbble.com/users/1538526/screenshots/4518866/media/b76f36fd1a25de317d62157835adabc4.gif',
            ),
          ]),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Bentornato, Gian'),
      centerTitle: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.all(2),
          child: const CircleAvatar(
            radius: 48, // Image radius
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1597019558926-3eef445fdf60?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class DecoratedButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUri;

  const DecoratedButton(
      {super.key,
      required this.title,
      this.subtitle = '',
      this.imageUri =
          'https://cdn.dribbble.com/users/1538526/screenshots/4518866/media/b76f36fd1a25de317d62157835adabc4.gif'});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {Navigator.pushNamed(context, '/ar')},
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Color.fromARGB(255, 245, 236, 222),
          ),
          child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 110, 94, 67),
                              ),
                            ),
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 110, 94, 67),
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(flex: 1, child: Image(image: NetworkImage(imageUri)))
              ]),
        ));
  }
}
