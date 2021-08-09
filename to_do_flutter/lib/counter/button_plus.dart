import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/counter/counter_viw_model.dart';

class ButtonCounterPlus extends StatelessWidget {
  // final Function callback;
  // const ButtonCounterPlus(this.callback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: TextButton(
        onPressed: () {
          // Provider.of<CounterViewModel>(context, listen: false).increment();
          context.read<CounterViewModel>().increment();
        },
        child: Text(
          "+",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
