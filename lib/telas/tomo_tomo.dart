import 'package:flutter/material.dart';

class TomoTomo extends StatelessWidget {
  const TomoTomo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Tomo Tomo'),
        backgroundColor:
            const Color(0xFF0755B5),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            // FOTO

            Image.asset(
              'assets/tomo_tomo.png',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            Padding(
              padding:
                  const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    'Tomo Tomo',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    '🍴 Alimentação',
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
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Sobre o estabelecimento',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'O Tomo Tomo é uma opção de alimentação em São Lourenço da Serra. '
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
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const ListTile(
                    contentPadding:
                        EdgeInsets.zero,

                    leading: Icon(
                      Icons.location_on,
                      color:
                          Color(0xFF0755B5),
                    ),

                    title: Text(
                      'São Lourenço da Serra - SP',
                    ),
                  ),

                  const ListTile(
                    contentPadding:
                        EdgeInsets.zero,

                    leading: Icon(
                      Icons.access_time,
                      color:
                          Color(0xFF0755B5),
                    ),

                    title: Text(
                      'Consultar horário',
                    ),
                  ),

                  const SizedBox(height: 15),

                  // FAVORITAR

                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton.icon(
                      onPressed: () {},

                      icon: const Icon(
                        Icons.favorite_border,
                      ),

                      label: const Text(
                        'Adicionar aos favoritos',
                      ),

                      style:
                          ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(
                                0xFF0755B5),

                        foregroundColor:
                            Colors.white,

                        padding:
                            const EdgeInsets.all(
                                15),
                      ),
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