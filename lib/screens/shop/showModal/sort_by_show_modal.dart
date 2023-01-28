import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';

import 'package:flutter/material.dart';

class SortByShowModal extends StatefulWidget {
  const SortByShowModal({
    Key? key,
  }) : super(key: key);

  @override
  State<SortByShowModal> createState() => _SortByShowModalState();
}

class _SortByShowModalState extends State<SortByShowModal> {
  String? _sortby = 'Neweat First';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Sort By',
          style: textStyle.copyWith(
            fontSize: 16.51,
            color: textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: const Text('Newest First'),
          trailing: Radio(
            value: 'Newest First',
            groupValue: _sortby,
            onChanged: (value) {
              setState(() {
                _sortby = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Price High to Low'),
          trailing: Radio(
            value: 'Price High to Low',
            groupValue: _sortby,
            onChanged: (value) {
              setState(() {
                _sortby = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Price Low to High'),
          trailing: Radio(
            value: 'Price Low to High',
            groupValue: _sortby,
            onChanged: (value) {
              setState(() {
                _sortby = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
