import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'jjk.dart';

class FavoritePage extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context) {
    // Access the FavoriteModel instance using Provider.of.
    final favoriteModel = Provider.of<FavoriteModel>(context);
    
    // Get the list of favorite anime series from the FavoriteModel.
    final favorites = favoriteModel.favorites;

    return Scaffold(
      // display Favorites in the appbar
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        //to check whether the anime already added to favorite
        itemCount: favorites.length,
        //callback function to take context and index parameter
        itemBuilder: (context, index) {
          final data = favorites[index];
          return ListTile(
            title: Text(data.name),
            subtitle: Text(data.episode.toString()),
            leading: Image.network(data.image),
            // to remove any favorites anime
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                favoriteModel.removeFromFavorites(data);
              },
            ),
          );
        },
      ),
    );
  }
}
