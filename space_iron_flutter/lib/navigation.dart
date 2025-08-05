import 'package:flutter/material.dart';
import 'api.dart';

/// Main menu screen for Space Iron.
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Start Game'),
            onTap: () {
              Navigator.pushNamed(context, '/game');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}

/// Game screen that fetches and displays mock player data.
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Future<List<dynamic>> _playersFuture;

  @override
  void initState() {
    super.initState();
    _playersFuture = ApiService.fetchPlayers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game')),
      body: FutureBuilder<List<dynamic>>(
        future: _playersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No players found.'));
          }
          final players = snapshot.data!;
          return ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index) {
              final player = players[index];
              return ListTile(
                title: Text(player['name'] ?? 'Unknown'),
                subtitle: Text('ID: ${player['id']}'),
              );
            },
          );
        },
      ),
    );
  }
}

/// Placeholder for the settings screen.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Placeholder')),
    );
  }
}

/// Placeholder for the about screen.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const Center(child: Text('About Space Iron')),
    );
  }
}
