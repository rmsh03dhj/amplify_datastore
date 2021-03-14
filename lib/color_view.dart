import 'package:flutter/material.dart';
import 'package:flutter_app/models/ColourProperties.dart';
import 'package:flutter_app/color_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading_view.dart';

class ColorsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorsViewState();
}

class _ColorsViewState extends State<ColorsView> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _navBar(),
      floatingActionButton: _floatingActionButton(),
      body: BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
        if (state is ListColorsSuccess) {
          return state.colors.isEmpty ? _emptyColorsView() : _colorsListView(state.colors);
        } else if (state is ListColorsFailure) {
          return _exceptionView(state.exception);
        } else {
          return LoadingView();
        }
      }),
    );
  }

  Widget _exceptionView(Exception exception) {
    return Center(child: Text(exception.toString()));
  }

  AppBar _navBar() {
    return AppBar(
      title: Text('Colors'),
    );
  }

  Widget _newColorView() {
    return Column(
      children: [
        TextField(
          controller: _titleController,
          decoration: InputDecoration(hintText: 'Enter new color'),
        ),
        ElevatedButton(
            onPressed: () {
              BlocProvider.of<ColorCubit>(context).createColor(int.parse(_titleController.text));
              _titleController.text = '';
              Navigator.of(context).pop();
            },
            child: Text('Save color'))
      ],
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => _newColorView());
        });
  }

  Widget _emptyColorsView() {
    return Center(
      child: Text('No colors yet'),
    );
  }

  Widget _colorsListView(List<ColourProperties> colors) {
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return Card(
          color: Color.fromRGBO(color.red, color.green, color.blue, 1),
          child: Text(color.id),
        );
      },
    );
  }
}
