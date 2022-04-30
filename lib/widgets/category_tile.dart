import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String? imageUrl, title, reviews;
  final bool liked;
  const CategoryTile(
      {Key? key,
      required this.imageUrl,
      required this.liked,
      required this.reviews,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ListTile(
                    title: Text(title!,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Row(
                      children: [
                        const Icon(Icons.star, size: 15, color: Colors.orange),
                        const Icon(Icons.star, size: 15, color: Colors.orange),
                        const Icon(Icons.star, size: 15, color: Colors.orange),
                        const Icon(Icons.star, size: 15, color: Colors.orange),
                        const Icon(Icons.star_border_outlined,
                            size: 15, color: Colors.orange),
                        Text('  ${reviews!} Reviews',
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    trailing: Icon(
                        (liked) ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.red,
                        size: 18),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(imageUrl!), fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
