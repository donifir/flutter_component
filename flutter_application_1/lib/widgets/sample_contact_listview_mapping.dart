import 'package:flutter/material.dart';

class SampleContactMappingListview extends StatelessWidget {
  SampleContactMappingListview({super.key});
  final List colorCodes = [900,800,700,600,500,400,300,200,100];

  final List data = [
    {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'saras',
      'address':'Jepara',
    },
    {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
     {
      'photoUrl':'https://i.pravatar.cc/150?img=1',
      'name':'doni',
      'address':'Malang',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SampleContactMappingListview',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading:Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: (){},
            ),
            tileColor:Colors.grey[400],
            shape: 
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: colorCodes.length,
        separatorBuilder:(context, index){
          return const Divider(
            color: Colors.grey,
          thickness: 2
          );
        }
      ),
    );
  }
}
