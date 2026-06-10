import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:s6_base_202604_202610/main.dart';
import 'package:s6_base_202604_202610/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.amber,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 1,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              //ThemeScope.of(context).onToggleTheme();
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pantalla de Inicio',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () => context.push('/profile'),
                icon: const Icon(Icons.person),
                label: const Text('Ir a Perfil'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 50),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => context.push('/settings'),
                icon: const Icon(Icons.settings),
                label: const Text('Ir a Ajustes'),
                style: FilledButton.styleFrom(minimumSize: const Size(220, 50)),
              ),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                onPressed: () => context.push('/detail'),
                icon: const Icon(Icons.info),
                label: const Text('Ir a Detalle'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(220, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
