import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/recipe_model.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  RecipePageState createState() => RecipePageState();
}

class RecipePageState extends State<RecipePage> with AutomaticKeepAliveClientMixin  {
  int recipeTagSize = 10;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Theme.of(context).colorScheme.surfaceVariant,
    );
  }

  @override
  bool get wantKeepAlive => true;

  Widget recipeGrid(){
    return Center(
      child: GridView.builder(
        shrinkWrap:  true,
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: recipeTagSize,
        itemBuilder: (BuildContext ctx, index) {
          return recipeCard()
        }
      )
    );
  }

  Widget recipeCard(RecipeModel recipeModel){
    bool selected = false;
    return Card(
      child: Container(
        height: 290,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            CachedNetworkImage(
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl: 'https://picsum.photos/250?image=9',
            ),
            IconButton(
              isSelected: selected,
              icon: const Icon(Icons.star_outline),
              selectedIcon: const Icon(Icons.star),
              onPressed: () { setState(() { selected = !selected; });
              },
              style: enabledFilledTonalButton(selected),
            ),
            FloatingActionButton.extended(
              label: const Text("See More"),
              onPressed: () {

              },
            )
          ]
        )
      )
    );
  }

  ButtonStyle enabledFilledTonalButton(bool selected) {
    ColorScheme colors = Theme.of(context).colorScheme;
    return IconButton.styleFrom(
      foregroundColor:
      selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
      backgroundColor:
      selected ? colors.secondaryContainer : colors.surfaceVariant,
      hoverColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.08)
          : colors.onSurfaceVariant.withOpacity(0.08),
      focusColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.12)
          : colors.onSurfaceVariant.withOpacity(0.12),
      highlightColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.12)
          : colors.onSurfaceVariant.withOpacity(0.12),
    );
  }
}