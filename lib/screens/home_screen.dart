import 'package:flutter/material.dart';
import 'package:gamevault/widgets/categories_list.dart';
import 'package:gamevault/widgets/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GameVault'),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 12),
            Icon(Icons.more_vert),
            SizedBox(width: 12),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.videogame_asset), text: 'Juegos'),
              Tab(icon: Icon(Icons.star), text: 'Favoritos'),
              Tab(icon: Icon(Icons.category), text: 'Categorías'),
            ],
          ),
        ),
        body: TabBarView(
            children: [
            const GamesGrid(),
            const Center(child: Text('Aquí aparecerán tus favoritos')),
            const CategoriesList(),
          ],
        ),
      ),
    );
  }
}
