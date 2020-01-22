import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Circle Images'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: new SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: "https://scontent.fpnh1-1.fna.fbcdn.net/v/t1.0-9/37388562_1955112657874709_8803682469938200576_o.jpg?_nc_cat=104&_nc_ohc=FXBEPufjvBAAX9szPsz&_nc_ht=scontent.fpnh1-1.fna&oh=7b9603ff631ac44878081b1dd4c8457c&oe=5E8ECC78",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          //colorFilter:
                          //ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                      ),
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    color: Colors.white,
                    child: Text(
                        'Samreaksa Ros',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Sam Style',
                            fontSize: 52,
                        )
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    height: 32.0,
                    //color: Colors.blue,
                    child: Text(
                        'Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Flutter Developer',
                            fontSize: 25.0
                        )
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 5.0,
                      color: Colors.blue
                  )
                ],
              )
            )


          ],
        ),
      ),
    );
  }
}
