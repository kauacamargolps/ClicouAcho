import 'package:flutter/material.dart';

import 'ultrafarma.dart';
import 'drogadelia.dart';
import 'usefarma.dart';

class Farmacia extends StatelessWidget {
  const Farmacia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmácias'),
        backgroundColor: const Color(0xFF0755B5),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                'Farmácias próximas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // ULTRAFARMA
              _FarmaciaCard(
                imagem: 'assets/ultrafarma.png',
                nome: 'Ultrafarma',
                pagina: const Ultrafarma(),
              ),

              const SizedBox(height: 15),

              // DROGA DÉLIA
              _FarmaciaCard(
                imagem: 'assets/drogadelia.png',
                nome: 'DrogaDélia',
                pagina: const DrogaDelia(),
              ),

              const SizedBox(height: 15),

              // USEFARMA
              _FarmaciaCard(
                imagem: 'assets/usefarma.png',
                nome: 'UseFarma',
                pagina: const UseFarma(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ==========================================
// CARD DAS FARMÁCIAS
// ==========================================

class _FarmaciaCard extends StatelessWidget {
  final String imagem;
  final String nome;
  final Widget pagina;

  const _FarmaciaCard({
    required this.imagem,
    required this.nome,
    required this.pagina,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pagina,
          ),
        );
      },

      child: Card(
        elevation: 3,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        child: ListTile(
          contentPadding: const EdgeInsets.all(10),

          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: Image.asset(
              imagem,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),

          title: Text(
            nome,

            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),

          subtitle: const Text(
            'Farmácia • ⭐ 4.5',
          ),

          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
      ),
    );
  }
}