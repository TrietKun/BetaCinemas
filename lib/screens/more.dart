import 'package:flutter/material.dart';
import '../widgets/appBar_option.dart';
import '../widgets/listOption.dart';
import '../dataHash/listOption.dart';

class More extends StatelessWidget {
  const More();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarOption(),
      body: ListOption(listOption: ListOptions.listOptions),
    );
  }
}
