import 'package:flutter/material.dart';

void main() {
  runApp(const FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 120,
      padding: const EdgeInsets.all(12),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

  List<Widget> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Image.network(
            'https://via.placeholder.com/100x100?text=Image$i',
            fit: BoxFit.cover,
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Widget.title'),
          ),
          body: Center(
            child: _buildGrid(),
            // child: Column(
            //  mainAxisSize: MainAxisSize.min,

            //   children: [
            //     SafeArea(

            //         child: Container(
            //           height: 100.0,
            //           width: 100.0,
            //           color: Colors.green,

            //     ),

            //             ),
            //           const SecondPage(),
            //   ],
            // ),
          ),
        ));
  }
}


// class GridApp extends StatelessWidget {
//   const GridApp({super.key});
// Widget _buildGrid() => GridView.extent(
//    maxCrossAxisExtent: 150,
//    padding:const EdgeInsets.all(4),
//    mainAxisSpacing: 4,
//    crossAxisSpacing: 4,
//    children: 
//     _buildGridTileList(10));
   
//    List<Container> _buildGridTileList(int count) => List.generate(
//    count,
//    (i)=> Container(
//     width: 100,
//     height: 100,
//     color: Colors.blue,
//    )
//    );

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


// class SecondPage extends StatefulWidget{
//   const SecondPage({super.key});
//   @override
//   State<SecondPage> createState() {
//      return _SecondPageState();    
//   }
// }

// class _SecondPageState extends State<SecondPage>{
//   @override
//   Widget build(BuildContext context) {
//      return SizedBox(
//       height: 100,
//       child: Image.asset('images/quiz-logo.png'),
//      );    
//   }
// }