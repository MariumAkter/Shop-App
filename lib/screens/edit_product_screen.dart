import 'package:flutter/material.dart';
class EditProductScreen extends StatelessWidget {
static const routeName = '/edit-product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget> [
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
            ),
          ],
        ),

      ),
    );
  }
}
