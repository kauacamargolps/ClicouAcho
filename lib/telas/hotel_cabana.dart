import 'package:flutter/material.dart';

class HotelCabana extends StatelessWidget {
  const HotelCabana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel Cabana'),
        backgroundColor: const Color(0xFF0755B5),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset(
              'assets/hotel_cabana.png',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text(
                    'Hotel Cabana',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    '🏨 Hospedagem',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),

                      SizedBox(width: 5),

                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Sobre o estabelecimento',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'O Hotel Cabana é uma opção de hospedagem em São Lourenço da Serra. '
                    'Confira as informações do estabelecimento e encontre o local.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Informações',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: Icon(
                      Icons.location_on,
                      color: Color(0xFF0755B5),
                    ),

                    title: Text(
                      'São Lourenço da Serra - SP',
                    ),
                  ),

                  const ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: Icon(
                      Icons.access_time,
                      color: Color(0xFF0755B5),
                    ),

                    title: Text(
                      'Consultar horário',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}