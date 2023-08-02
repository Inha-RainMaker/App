import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rain_maker/utils/pickImage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _file;

  _selectImage(BuildContext context) async {
    return showDialog(context: context, builder: (context){
      return SimpleDialog(
        title: const Text('Create a Post') ,
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Take a photo'),
            onPressed: () async{
              Navigator.of(context).pop();
              Uint8List file= await pickImage(ImageSource.camera,);
              setState(() {_file=file;});
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Choose from gallery'),
            onPressed: () async{
              Navigator.of(context).pop();
              Uint8List file= await pickImage(
                ImageSource.gallery,
              );
              setState(() {_file=file;});
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Cancel'),
            onPressed: () async{
              Navigator.of(context).pop();

            },
          )
        ],
      );
    });
  }


  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {


    return _file == null? Center(
      child: IconButton(
        icon: const Icon(Icons.upload),
        onPressed: ()=>_selectImage(context),
      ),
    )
     : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color:Colors.black),
          onPressed: (){},
        ),
        title: const Text('Post to',style: TextStyle(color: Colors.black),),
        centerTitle: false,
        actions: [
          TextButton(onPressed: (){}, child:const Text('post',style:  TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),) )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('asset/img/me.jpg'),
                      ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.3,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'write a caption',
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),

              const Divider(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: AspectRatio(
              aspectRatio: 1/1,
              child:  Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: MemoryImage(_file!),
                      fit:BoxFit.fill,
                      alignment:FractionalOffset.topCenter,
                    ),
                  border: Border.all(color: Colors.black ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
