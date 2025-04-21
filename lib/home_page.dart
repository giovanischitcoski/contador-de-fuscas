import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FuscaCounter carolCounter;
  late FuscaCounter giCounter;

  @override
  void initState() {
    super.initState();
    carolCounter = FuscaCounter(name: 'Carol');
    giCounter = FuscaCounter(name: 'Gi');
    _loadCounters();
  }

  Future<void> _loadCounters() async {
    final prefs = await SharedPreferences.getInstance();
    
    setState(() {
      carolCounter.count = prefs.getInt('carol_count') ?? 0;
      giCounter.count = prefs.getInt('gi_count') ?? 0;
    });
  }

  Future<void> _saveCounter(FuscaCounter counter) async {
    final prefs = await SharedPreferences.getInstance();
    if (counter.name == 'Carol') {
      await prefs.setInt('carol_count', counter.count);
    } else {
      await prefs.setInt('gi_count', counter.count);
    }
  }

  void _incrementCounter(FuscaCounter counter) {
    setState(() {
      counter.increment();
      _saveCounter(counter);
    });
  }

  void _decrementCounter(FuscaCounter counter) {
    setState(() {
      counter.decrement();
      _saveCounter(counter);
    });
  }

  Widget _buildCounterCard(FuscaCounter counter) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Fuscas de ${counter.name}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${counter.count}',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove, size: 32),
                  onPressed: () => _decrementCounter(counter),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.add, size: 32),
                  onPressed: () => _incrementCounter(counter),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Fuscas'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCounterCard(carolCounter),
            _buildCounterCard(giCounter),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Desenvolvido por Gi e Carol',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}