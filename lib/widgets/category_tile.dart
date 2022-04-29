import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CategoryTile extends StatelessWidget {
  String? imageUrl, title, reviews;
  bool liked = false;
  CategoryTile(
      {Key? key,
      required this.imageUrl,
      required this.liked,
      required this.reviews,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
       
        width: 80,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red, image: DecorationImage(image: AssetImage(imageUrl!), fit: BoxFit.fill,)),
          ),
      title: Text(title!,
          style: TextStyle(  fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Icon(Icons.star, size: 15, color: Colors.orange),
          Icon(Icons.star, size: 15, color: Colors.orange),
          Icon(Icons.star, size: 15, color: Colors.orange),
          Icon(Icons.star, size: 15, color: Colors.orange),
          Icon(Icons.star_border_outlined, size: 15, color: Colors.orange),

          Text('  ${reviews!} Reviews', style: TextStyle(color: Colors.grey)),
        ],
      ),
      trailing: Icon((liked) ? Icons.favorite : Icons.favorite_outline,
          color: Colors.red, size: 18),
    );
  }
}
