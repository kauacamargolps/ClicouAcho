import 'package:flutter/material.dart';

import 'alimentacao.dart';
import 'tomo_tomo.dart';
import 'favoritos.dart';
import 'hospedagem.dart';
import 'farmacia.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // =========================
      // MENU LATERAL
      // =========================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF0755B5),
              ),
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 150,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.restaurant),
              title: const Text('Alimentação'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Alimentacao(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.hotel),
              title: const Text('Hospedagem'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hospedagem(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.local_pharmacy),
              title: const Text('Farmácias'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Farmacia(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favoritos'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Favoritos(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // =========================
      // BARRA SUPERIOR
      // =========================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,

        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color(0xFF0755B5),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        title: Image.asset(
          'assets/logo.png',
          height: 45,
        ),

        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF0755B5),
            ),
          ),
        ],
      ),

      // =========================
      // CONTEÚDO
      // =========================
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // =========================
            // IMAGEM DA CIDADE
            // =========================
            Image.asset(
              'assets/sao_lourenco.png',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            // =========================
            // BUSCA
            // =========================
            Padding(
              padding: const EdgeInsets.all(15),

              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar lugar...',

                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF0755B5),
                  ),

                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),

            // =========================
            // CATEGORIAS
            // =========================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),

              child: Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: Row(
                children: [
                  // ALIMENTAÇÃO
                  Expanded(
                    child: _Categoria(
                      icone: Icons.restaurant,
                      texto: 'Alimentação',
                      aoClicar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Alimentacao(),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 10),

                  // HOSPEDAGEM
                  Expanded(
                    child: _Categoria(
                      icone: Icons.hotel,
                      texto: 'Hospedagem',
                      aoClicar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Hospedagem(),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 10),

                  // FARMÁCIA
                  Expanded(
                    child: _Categoria(
                      icone: Icons.local_pharmacy,
                      texto: 'Farmácia',
                      aoClicar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Farmacia(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // =========================
            // LUGARES PRÓXIMOS
            // =========================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),

              child: Text(
                'Lugares próximos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // TOMO TOMO
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: GestureDetector(
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
            ),

            const SizedBox(height: 12),

            // JR BOTEQUIM
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: _LugarCard(
                imagem: 'assets/jr_botequim.png',
                nome: 'JR Botequim',
                descricao: 'Restaurante • ⭐ 4.5',
              ),
            ),

            const SizedBox(height: 12),

            // MARIA CAFÉ
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: _LugarCard(
                imagem: 'assets/maria_cafe.png',
                nome: 'Maria Café',
                descricao: 'Café • ⭐ 4.5',
              ),
            ),

            const SizedBox(height: 20),

            // =========================
            // BOTÃO FAVORITOS
            // =========================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Favoritos(),
                      ),
                    );
                  },

                  icon: const Icon(
                    Icons.favorite,
                  ),

                  label: const Text(
                    'Ver meus favoritos',
                  ),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0755B5),
                    foregroundColor: Colors.white,

                    padding: const EdgeInsets.all(15),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      // =========================
      // BARRA INFERIOR
      // =========================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        selectedItemColor: const Color(0xFF0755B5),

        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],

        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Favoritos(),
              ),
            );
          }
        },
      ),
    );
  }
}

// =====================================================
// CATEGORIA
// =====================================================

class _Categoria extends StatelessWidget {
  final IconData icone;
  final String texto;
  final VoidCallback aoClicar;

  const _Categoria({
    required this.icone,
    required this.texto,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoClicar,

      child: Container(
        height: 100,

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(15),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              icone,
              size: 30,
              color: const Color(0xFF0755B5),
            ),

            const SizedBox(height: 8),

            Text(
              texto,
              textAlign: TextAlign.center,

              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// CARD DE LUGAR
// =====================================================

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

          child: Text(
            descricao,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}