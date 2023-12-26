import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchapi/search_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyText2: TextStyle(fontSize: 33),
              subtitle1: TextStyle(fontSize: 22),
            ),
          ),
          home: const Scaffold(
              body: SafeArea(
            child: MyHomePage(),
          ))),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Search User'),
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'User name',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('name'),
              );
            },
            itemCount: 22,
          ),
        ),
      ],
    );
  }
}
