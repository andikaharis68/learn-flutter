import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/counter/button_minus.dart';
import 'package:to_do_flutter/counter/button_plus.dart';
import 'package:to_do_flutter/counter/counter_viw_model.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: ChangeNotifierProvider(
          create: (context) => CounterViewModel(),
          builder: (context, child) {
            return Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(flex: 1, child: ButtonCounterMinus()),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Text(
                                  "${context.watch<CounterViewModel>().val}",
                                  style: TextStyle(fontSize: 30)),

                              // Consumer<CounterViewModel>(
                              //   builder: (context, value, child) {
                              //     return Text(
                              //       "${value.val}",
                              //       style: TextStyle(fontSize: 30),
                              //     );
                              //   },
                              // ),
                            )),
                        Flexible(flex: 1, child: ButtonCounterPlus())
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    ));
  }
}
