import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/counter/counter_viw_model.dart';

class ButtonCounterMinus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: TextButton(
        onPressed: () {
          // Provider.of<CounterViewModel>(context, listen: false).decrement();
          context.read<CounterViewModel>().decrement();
        },
        child: Text(
          "-",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
