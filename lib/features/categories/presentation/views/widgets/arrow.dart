import 'package:flutter/material.dart';

class arrow extends StatelessWidget {
  arrow({super.key, this.onTap});
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, top: 9, bottom: 11),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .04,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              iconSize: 28,
              onPressed: onTap,
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
