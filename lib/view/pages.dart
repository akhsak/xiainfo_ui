import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text('Schedule Page Content'),
      ),
    );
  }
}

class shopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Providers'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text('Provider Page Content'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text('Settings Page Content'),
      ),
    );
  }
}

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clients')),
      body: Center(child: Text('This is the Clients Page')),
    );
  }
}

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: Center(child: Text('This is the Notes Page')),
    );
  }
}
