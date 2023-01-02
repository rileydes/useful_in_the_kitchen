// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:property_change_notifier/property_change_notifier.dart';
//
// import '../constants.dart';
// import '../model/recipe_model.dart';
// import 'data.dart';
//
// class AppState extends PropertyChangeNotifier<String> {
//   /// [points] keeps track of all of the poi currently shown on the map.
//   List<RecipeModel> recipes;
//
//   /// [context] is the passed context to make reading from assets possible.
//   final BuildContext context;
//
//   AppState({
//     this.recipes = recipeData,
//     required this.context,
//   }){
//     loadPoints();
//   }
//
//   /// [loadPoints] will load the points asynchronously from firebase via json and populate allTags.
//   Future<void> loadPoints() async {
//     try {
//       List<RecipeModel> poi = List.empty(growable: true);
//       Set<String> tags = {};
//       Set<String> lists = {"None","Custom"};
//
//       var url = "firebaseURL";
//       final response = await http.get(Uri.parse(url));
//       final List<dynamic> jsonArray = jsonDecode(response.body);
//
//       for (var element in jsonArray) {
//         RecipeModel model = RecipeModel.fromJson(element);
//         poi.add(model);
//       }
//     } catch (error) {
//       rethrow;
//     }
//
//     notifyListeners();
//   }
//
//   /// [extractLists] looks for tags that contain list within the submitted list of tags.
//   List<String> extractLists(List<String> tags){
//     List<String> ls = List.empty(growable: true);
//     for(String tag in tags){
//       if(tag.toLowerCase().contains('list')){
//         ls.add(tag);
//       }
//     }
//
//     return ls;
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is AppState &&
//         other.points == points &&
//         other.selectedTags == selectedTags &&
//         other.userPosition == userPosition &&
//         other.currentPlace == currentPlace;
//   }
//
//   @override
//   int get hashCode => Object.hash(points, selectedTags, userPosition, currentPlace);
// }