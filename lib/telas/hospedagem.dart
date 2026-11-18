import 'package:flutter/material.dart';

class Hospedagem extends StatelessWidget {
  const Hospedagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospedagem'),
        backgroundColor: const Color(0xFF0755B5),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'Lugares para se hospedar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: ListTile(
                contentPadding: const EdgeInsets.all(10),

                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.asset(
                    'assets/hotel_cabana.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),

                title: const Text(
                  'Hotel Cabana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                subtitle: const Text(
                  'Hospedagem • ⭐ 4.5',
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}