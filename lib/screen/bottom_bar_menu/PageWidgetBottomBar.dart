// @rizalandy ~ PC

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {

  Color color;

  PageWidget(MaterialColor brown, {required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

// @rizalandy ~ PC