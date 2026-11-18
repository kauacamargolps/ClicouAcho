import 'package:flutter/material.dart';

import 'tomo_tomo.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Favoritos'),
        backgroundColor:
            const Color(0xFF0755B5),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              'Meus favoritos',
              style: TextStyle(
                fontSize: 24,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const TomoTomo(),
                  ),
                );
              },

              child: Card(
                child: ListTile(

                  leading: Image.asset(
                    'assets/tomo_tomo.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),

                  title: const Text(
                    'Tomo Tomo',
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  subtitle: const Text(
                    'Alimentação • ⭐ 4.5',
                  ),

                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}