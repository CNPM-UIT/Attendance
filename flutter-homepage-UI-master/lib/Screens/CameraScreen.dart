import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  File _image;
  final String url = '';


  picker() async {
    print('Picker is called');
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
//    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      _image = img;
      setState(() {});
    }
  }

  getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _image = image;
      //showbutton 
    });
  }
  /*Future sendImagetoServer() async{
    //open a bytestream
    
    var stream = new http.ByteStream(DelegatingStream.typed(_image.openRead()));

    final int length = await _image.length();
    //request
    final request = new http.MultipartRequest('POST', Uri.parse(url))
    ..files.add(
      new http.MultipartFile('Upload Image', stream, length,filename: 'Image Name')
    );
    //response
    http.Response response = await http.Response.fromStream(await request.send());
  }*/
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Image Picker'),
        ),
        body: new Container(
          child: new Center(
            child: _image == null
                ? new Text('No Image to Show ')
                : new Image.file(_image),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: picker,
          child: new Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}