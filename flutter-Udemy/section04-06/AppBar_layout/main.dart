import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter widget example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('press alarm button')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: SafeArea(
                          child:Column(
                              mainAxisSize:MainAxisSize.min,
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:[
                                Container(
                                  width:100.0,
                                  height:100.0,
                                  color:Colors.white,
                                  child:Text('container 1',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Container(
                                  width:300.0,
                                  height:100.0,
                                  color:Colors.blue,
                                  child:Text('container 2',
                                      style: TextStyle(fontSize: 24)
                                ),
                                ),
                                Container(
                                  width:100.0,
                                  height:100.0,
                                  color:Colors.yellow,
                                  child:Text('container 3',
                                    style: TextStyle(fontSize: 24)
                                  ),
                                ),
                              ]
                          ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ]
        )
      ),
    );
  }
}




/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              Container(
                width:100.0,
                height:100.0,
                color:Colors.white,
              child:Text('container 1'),
            ),
              Container(
                width:300.0,
                height:100.0,
                color:Colors.blue,
                child:Text('container 2'),
              ),
              Container(
                width:100.0,
                height:100.0,
                color:Colors.yellow,
                child:Text('container 3'),
              )
            ]
          )
        ),
      ),
    );
  }
}


class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       body:SafeArea(
         child:Column(
             crossAxisAlignment:CrossAxisAlignment.stretch,
           children:[
               Icon(Icons.star, size: 50),
               Icon(Icons.star, size: 50),
               Icon(Icons.star, size: 50),
           ]
         )
       )
     ),
    );
  }
}

 */

