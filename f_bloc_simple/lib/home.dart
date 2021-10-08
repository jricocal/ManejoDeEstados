import 'package:f_bloc_simple/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // layout hints https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Align(
              child: ElevatedButton(
                  onPressed: () {
                    // here we create the event
                    context.read<ColorBloc>().add(ChangeColor());
                  },
                  child: const Text('Change color (create event)')),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            // here we are listening for changes on the isRed variable that is on the
            // controller
            child: BlocBuilder<ColorBloc, bool>(
              builder: (context, state) {
                return Container(
                    color: state ? Colors.red : Colors.blue,
                    child: const Center(
                        child: Text(
                            'This container will change color depending on the App state')));
              },
            ),
          ))
        ],
      ),
    );
  }
}
