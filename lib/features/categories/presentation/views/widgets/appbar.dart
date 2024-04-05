import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(45.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: abarcolor,
      elevation: 0, // Removes the shadow
      title: Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your menu icon functionality here
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: SizedBox(
              width: 250,
              height: 27,
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ),
                  suffixIcon: Icon(Icons.menu),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {
                  // Handle search text changes
                },
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              // Add your world icon functionality here
            },
          ),
        ],
      ),
    );
  }
}
