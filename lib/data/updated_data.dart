import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';


// class Category {
//   const Category({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     this.color = Colors.orange,
//   });

//   final String id;
//   final String title;
//   final Color color;
//   final String imageUrl;
// }

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
    imageUrl:
        'https://www.hotelmousai.com/blog/wp-content/uploads/2021/12/Top-10-Traditional-Foods-in-Italy.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
    imageUrl:
        'https://img.taste.com.au/WDTI88v1/w720-h480-cfill-q80/taste/2016/11/zucchini-slice-10160-1.jpeg',
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
    imageUrl:
        'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/M6HASPARCZHYNN4XTUYT7H6PTE.jpg&w=1440',
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
    imageUrl:
        'https://www.foodandwine.com/thmb/y1OQjmtVLAy-FVjNtTZMyRTiXKM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/pork-schnitzel-warm-potato-salad-13-FT-RECIPE1222-464cf006b65940229b7f1bdc1446a3ea.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR29sM6aOh3YQpcDD4tnwbMuLUxZ66axiT9cwRzQbR4DQ&s',
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
    imageUrl:
        'https://digitalpress.fra1.cdn.digitaloceanspaces.com/q3w1zql/2023/08/exotic-japanese-food.webp',
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
    imageUrl:
        'https://www.kateskitchenkc.com/wp-content/uploads/2023/10/traditional-full-american-breakfast-eggs-pancakes-with-bacon-and-toast.jpg_s1024x1024wisk20cz03ui5Oqyz8Ys_pG0bVWsgoz_v_E5Oct4x-0C-sAjME.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
    imageUrl:
        'https://ik.imagekit.io/awwybhhmo/satellite_images/chinese/gray/about_us/2.jpg?tr=w-3840',
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
    imageUrl:
        'https://www.spectator.co.uk/wp-content/uploads/2023/09/iStock-1493915795.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSubOLr3OB5fxneAbLrjVKD6UgjLhsFd9GiZDU8-EtWTCFWzGM8m5XSU0qp-Tw9xhxaxnY&usqp=CAU',
  ),
];

class OnBoardingData {
  const OnBoardingData(
      {required this.title, required this.description, required this.imageUrl});
  final String title;
  final String description;
  final String imageUrl;
}

const OnBoardingScreenData = [
  OnBoardingData(
    title: 'Discover Delicious',
    description:
        'Find endless inspiration for every meal. Explore thousands of recipes for all tastes and dietary needs.',
    imageUrl:
        'https://www.howsweeteats.com/wp-content/uploads/2022/10/apricot-chicken-7.jpeg',
  ),
  OnBoardingData(
    title: 'Cook with Confidence',
    description:
        'Easy-to-follow instructions and helpful tips guide you through every step. Become a kitchen pro in no time! ',
    imageUrl:
        'https://c.ndtvimg.com/2023-12/9gjtdjgo_indian-cuisine_625x300_13_December_23.jpg?im=FeatureCrop,algorithm=dnn,width=1200,height=738',
  ),
  OnBoardingData(
    title: 'Organize Your Meals',
    description: 'Save your favorites, create shopping lists, and plan your weekly meals. Make cooking a breeze.',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlj9B0eFBLNazrwtLXwAph0AHpLtqLt6TAqdHcYvDGSQ&s',
  )
];
