import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meals.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]); // here we add initial state inside super

  bool toggleMealFavoriteStatus(Meal meal) {
    bool isMealFavorite = state.contains(meal);

    if (isMealFavorite) {
      state = state.where((element) => element.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }

    return !isMealFavorite;
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
