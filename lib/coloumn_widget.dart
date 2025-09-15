import 'package:flutter/material.dart';

class ColoumnWidget extends StatelessWidget {
  const ColoumnWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text('Widget Coloumn'),
        ),
        body: const Column(
            children: [
                Text('Ilmu Komputer'),
                Text('FMIPA'),
                Text('Universitas Lampung'),
                Text('2025'),
            ],
        ),
    );
  }
}

