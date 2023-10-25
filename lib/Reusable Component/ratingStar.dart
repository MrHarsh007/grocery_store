import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';

class RatingStar extends StatefulWidget {
  @override
  _RatingStarState createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  int _selectedStars = 0;
  final List<String> _ratingNames = [
    'Not Rated',
    'Poor',
    'Fair',
    'Good',
    'Very Good',
    'Excellent'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedStars = index + 1;
                });
              },
              child: Icon(
                size: 35,
                _selectedStars >= index + 1 ? Icons.star : Icons.star_border,
                color:
                    _selectedStars >= index + 1 ? Colors.yellow : Colors.grey,
              ),
            );
          }),
        ),
        const SizedBox(height: 8),
        Text(_ratingNames[_selectedStars],
            style: AppFonts.getProductTitleStyle(context)),
      ],
    );
  }
}
