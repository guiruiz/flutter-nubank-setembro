import 'package:aula7/app/home/home_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: bloc.streamOut,
            builder: (context, snapshot) => Text("Contador ${snapshot.data}")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: bloc.increment),
    );
  }
}