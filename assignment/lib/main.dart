import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyWidget());
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  Widget _buildGrid() {
    List<Widget> images = [
      Image.network(
        'https://thumbs.dreamstime.com/b/purple-gerbera-flower-white-isolated-background-clipping-path-closeup-no-shadows-design-nature-92549587.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://t4.ftcdn.net/jpg/01/75/99/65/360_F_175996511_5m91s18CfsEkFxqwx8zCQNIlmxTmqj5m.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://www.bhmpics.com/downloads/flowers-with-white-background/34.dahlia-light-blue-flower-white-isolated-background-clipping-path-closeup-no-shadows-garden-flower-dahlia-light-blue-109559727.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://t4.ftcdn.net/jpg/02/22/32/45/360_F_222324557_ubu2M3Bkh5Yo4fc9jqlJGwddEi0wtfVd.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://img.freepik.com/premium-photo/yellow-flowers-isolated-white-background_1000714-1105.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://static.vecteezy.com/system/resources/previews/002/601/548/large_2x/pink-flower-isolate-white-background-photo.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://thumbs.dreamstime.com/b/red-brown-dahlia-flower-white-isolated-background-clipping-path-design-closeup-nature-red-brown-dahlia-flower-125587801.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://media.istockphoto.com/id/500306545/photo/decorative-daisy-bright-orange-color.jpg?s=612x612&w=0&k=20&c=j1PxZmSNXfvXhUWOfzfF_nLe8KYimcEaW0RfTh65PJU=',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://www.bhmpics.com/downloads/flowers-with-white-background/34.dahlia-light-blue-flower-white-isolated-background-clipping-path-closeup-no-shadows-garden-flower-dahlia-light-blue-109559727.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://www.bhmpics.com/downloads/flowers-with-white-background/34.dahlia-light-blue-flower-white-isolated-background-clipping-path-closeup-no-shadows-garden-flower-dahlia-light-blue-109559727.jpg',
        fit: BoxFit.cover,
      ),
    ];

    return GridView.extent(
      maxCrossAxisExtent: 200,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: images,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            colorScheme: const ColorScheme.highContrastLight(
                background: Color.fromARGB(255, 148, 207, 255))),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            
            title: const Text(
              'Flowers',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: _buildGrid(),
          ),

        ));
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        
          body: Column(
            
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.all(12.0),
                child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                               
                                decoration: const InputDecoration(hintText: "First Name"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration:
                                    const InputDecoration(hintText: "Last Name"),
                              ),
                            ),
                          ],
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}