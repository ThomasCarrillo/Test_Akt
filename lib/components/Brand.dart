import 'package:flutter/material.dart';

class BrandComponent extends StatelessWidget {
  final String imagePath;
  final String mainTitle;
  final String description;
  final String btnText;
  final onPressed;

  const BrandComponent(
      {Key? key,
      required this.imagePath,
      required this.mainTitle,
      required this.description,
      required this.btnText,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            mainTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: onPressed,
            child: Container(
              width: 120.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    btnText,
                    style: TextStyle(fontSize: 14),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
