import 'dart:convert';
import 'package:bongalo/module/constants.dart';
import 'package:bongalo/screen/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Search_Bike extends SearchDelegate<String>{




  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      Navigator.of(context).pop();
    }, icon:Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text("Search item please"),
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
   List<String> suggestionlist=suggestionlist2.where((element) => element.toLowerCase().startsWith(query)).toList();


    return suggestionlist.length<=0?SpinKitCircle(color: Colors.black,): ListView.builder(itemBuilder: (context,index){

      return Card(child: ListTile(
        onTap: ()async{
          Navigator.of(context).pushNamed(Search_Result.routename);

        },
        leading: Icon(Icons.location_on),
        title: Text(suggestionlist[index].toString()),

      ),
      );
    },
      itemCount: suggestionlist.length,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: (){
      query="";
    }, icon: Icon(Icons.clear))];
  }

}
