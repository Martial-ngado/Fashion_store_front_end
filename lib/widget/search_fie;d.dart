import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 60, top: 10),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey.shade50, // Background color
          filled: true,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey), // Style for hint text
          suffixIcon: Icon(
            Icons.search,
            size: 20,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding inside the TextField

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(5), // Rounded corners
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
            borderRadius: BorderRadius.circular(5), // Rounded corners when focused
          ),
        ),
      ),
    );
  }
}
