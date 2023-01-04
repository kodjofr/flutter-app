import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';


void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Recipes',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange,
          secondary: Colors.black,
        ),
      ),

      home: const MyHomePage(title: 'Recipes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

    body: SafeArea(
      // TODO : Replace child: Container()
      //4
      child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {


            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) {
                      
                      return RecipeDetail(recipe: Recipe.samples[index]);
                },
                ),
                );
              },
                child: buildRecipeCard(Recipe.samples[index]),
            );

          },
      ),
    ),
    );
}

    Widget buildRecipeCard(Recipe recipe) {
    //1
      return Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)),

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            children: <Widget>[
              Image(image: AssetImage(recipe.imageURL), height: 120,),

              const SizedBox(
                height: 12.0,
              ),
              Text(
                recipe.label,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'RobotoMono',
                )
              )
            ],
          ),
        ),
      );
    
  }

}
