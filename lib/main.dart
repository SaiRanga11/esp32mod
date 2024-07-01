// main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  // Ensuring the Widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initializing Firebase
  await Firebase.initializeApp();

  // Running the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseReference _database = FirebaseDatabase.instance.ref();
  String _value2 = "Loading...";
  String _value3 = "Loading...";
  String _value4 = "Loading...";
  String _value5 = "Loading...";
  String _value6 = "Loading...";
  String _value7 = "Loading...";
  String _value8 = "Loading...";
  String _value9 = "Loading...";

  @override
  void initState() {
    super.initState();
    _readData();
  }

 void _readData() { 
     _database.child('/temperatureData/objectTemp').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value2 = data.toString();
      });
    });
     _database.child('/SPo2').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value3 = data.toString();
      });
    });
     _database.child('/Gyro/ax').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value4 = data.toString();
      });
    });
     _database.child('/Gyro/ay').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value5 = data.toString();
      });
    });
     _database.child('/Gyro/az').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value6 = data.toString();
      });
    });
     _database.child('/Gyro/gx').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value7 = data.toString();
      });
    });
     _database.child('/Gyro/gy').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value8 = data.toString();
      });
    });
     _database.child('/Gyro/gz').onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        _value9 = data.toString();
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Object Temperature:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value2,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('SPO2:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value3,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Ax:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value4,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Ay:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value5,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Az:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value6,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Gx:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value7,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Gy:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value8,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Gz:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                Text(
              _value9,
              style: const TextStyle(fontSize: 24),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

