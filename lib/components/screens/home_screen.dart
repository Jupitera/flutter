import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            width: 200,
            height: 200,
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/T%C3%BCrk_Kahvesi_-_Bakir_Cezve.jpg/330px-T%C3%BCrk_Kahvesi_-_Bakir_Cezve.jpg',
          ),
          const Text('Such A Great Book'),
          const Text('Price: 12\$'),
          const Text('data'),
    
        ],
      ),
    );
  }
}
