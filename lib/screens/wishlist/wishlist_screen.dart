import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/empty_screen.dart';

import '../../services/utils.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = "/WishlistScreen";

  const WishlistScreen({Key? key}) : super(key: key);
  final bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return isEmpty
        ? const EmptyScreen(
            title: 'Your Wishlist Is Empty',
            subtitle: 'Explore more and shortlist some items',
            imagePath: 'assets/images/wishlist.png',
            buttonText: 'Add a wish',
          )
        : const SizedBox.shrink();
  }
}
