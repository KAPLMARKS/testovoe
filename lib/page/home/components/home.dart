import 'package:flutter/material.dart';
import 'package:testovoe/page/home/components/types.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  static const List<Widget> items = [
    Types(),
    _ListPhones(),
    _ListPhones(),
    _ListPhones(),
    _ListPhones(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: ((context, index) {
        return items[index];
      }),
    );
  }
}

class _ListPhones extends StatelessWidget {
  const _ListPhones();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/United-states_flag_icon_round.svg/1024px-United-states_flag_icon_round.svg.png'),
                  radius: 12,
                ),
              ),
              Text(
                'United States',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F7FA),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+1 (201) 123 45 67',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('New Jersey'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'S',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'V',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+1 (201) 123 45 67',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Washington'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'S',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'V',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: Icon(Icons.phone_android_outlined,
                            color: Colors.grey),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+1 (201) 123 45 67',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('New Jersey'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'S',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              side: const BorderSide(
                                color: Color(0xFFD4D9E0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'V',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
