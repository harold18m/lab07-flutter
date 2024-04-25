import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class FoodItem {
  final String name;
  final String price;
  final String imageUrl;

  FoodItem({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  final List <FoodItem> foodList = [
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
    FoodItem(
      name: 'Hamburguesa',
      price: 'S/ 10.99',
      imageUrl: 'https://c8.alamy.com/compes/2r94450/hamburguesa-burger-ilustracion-dibujada-a-mano-vector-doodle-estilo-ilustracion-de-dibujos-animados-2r94450.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú del restaurante'),
        ),
        body: ListView.builder(
          itemCount: foodList.length,
          itemBuilder: (context, index) {
            return _buildListItem(foodList[index]);
          },
        ),
      ),
    );
  }

  Widget _buildListItem(FoodItem foodItem) {
    return ListTile(
      leading: Image.network(
        foodItem.imageUrl,
        width: 100, 
        height: 100,
        fit: BoxFit.cover,
      ),
      title: Text(foodItem.name),
      subtitle: Text(foodItem.price),
      onTap: () {
        // Agrega el código que deseas ejecutar al hacer clic en un ListTile
        // Por ejemplo, puedes navegar a otra pantalla:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
      },
    );
  }
}

