import 'package:flutter/material.dart';
import 'tomo_tomo.dart';

class Alimentacao extends StatelessWidget {
  const Alimentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alimentação'),
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
                'Lugares para comer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // TOMO TOMO
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TomoTomo(),
                    ),
                  );
                },

                child: _LugarCard(
                  imagem: 'assets/tomo_tomo.png',
                  nome: 'Tomo Tomo',
                  descricao: 'Restaurante • ⭐ 4.5',
                ),
              ),

              const SizedBox(height: 15),

              // JR BOTEQUIM
              _LugarCard(
                imagem: 'assets/jr_botequim.png',
                nome: 'JR Botequim',
                descricao: 'Restaurante • ⭐ 4.5',
              ),

              const SizedBox(height: 15),

              // MARIA CAFÉ
              _LugarCard(
                imagem: 'assets/maria_cafe.png',
                nome: 'Maria Café',
                descricao: 'Café • ⭐ 4.5',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// CARD DOS LUGARES
class _LugarCard extends StatelessWidget {
  final String imagem;
  final String nome;
  final String descricao;

  const _LugarCard({
    required this.imagem,
    required this.nome,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(descricao),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}