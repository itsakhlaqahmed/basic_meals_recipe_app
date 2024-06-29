import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectMeal,
  });

  final Meal meal;
  final Function(Meal meal) onSelectMeal;

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  @override
  Widget build(context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      child: InkWell(
        onTap: () {
          onSelectMeal(meal);
        },
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(
                    meal.imageUrl,
                  ),
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                meal.title,
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(192, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MealItemTrait(
                      icon: Icons.schedule, label: '${meal.duration} min'),
                  const SizedBox(
                    width: 12,
                  ),
                  MealItemTrait(
                    icon: Icons.work,
                    label: complexityText,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  MealItemTrait(
                    icon: Icons.attach_money,
                    label: affordabilityText,
                  )
                ],
              ),
              // Stack(
              //   children: [
              //     FadeInImage(
              //       placeholder: MemoryImage(kTransparentImage),
              //       image: NetworkImage(meal.imageUrl),
              //       fit: BoxFit.cover,
              //       height: 200,
              //       width: double.infinity,
              //     ),
              //     Positioned(
              //       bottom: 0,
              //       left: 0,
              //       right: 0,
              //       child: Container(
              //         color: Colors.black54,
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 44, vertical: 6),
              //         child: Column(
              //           children: [
              //             Text(
              //               meal.title,
              //               maxLines: 2,
              //               softWrap: true,
              //               overflow: TextOverflow.ellipsis,
              //               textAlign: TextAlign.center,
              //               style: const TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.white,
              //               ),
              //             ),
              //             const SizedBox(
              //               height: 12,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 MealItemTrait(
              //                     icon: Icons.schedule,
              //                     label: '${meal.duration} min'),
              //                 const SizedBox(
              //                   width: 12,
              //                 ),
              //                 MealItemTrait(
              //                   icon: Icons.work,
              //                   label: complexityText,
              //                 ),
              //                 const SizedBox(
              //                   width: 12,
              //                 ),
              //                 MealItemTrait(
              //                   icon: Icons.attach_money,
              //                   label: affordabilityText,
              //                 )
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
    );
  }
}
