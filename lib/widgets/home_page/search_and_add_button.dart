import 'package:flutter/material.dart';

class SearchAndAddButton extends StatelessWidget {
  const SearchAndAddButton({
    super.key,
    required TextEditingController serchTextController,
  }) : _serchTextController = serchTextController;

  final TextEditingController _serchTextController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 20),
            child: TextField(
              controller: _serchTextController,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                fillColor: Color.fromRGBO(0, 0, 0, 0.25),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(
                    255,
                    255,
                    255,
                    0.6,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(30, 40),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
