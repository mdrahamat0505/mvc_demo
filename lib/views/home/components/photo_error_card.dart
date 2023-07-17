import 'package:flutter/material.dart';

class PhotoErrorCard extends StatelessWidget {
  final String errorMessage;
  final GestureTapCallback onPressed;

  const PhotoErrorCard({
    Key? key,
    required this.onPressed,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialBanner(
      backgroundColor: Colors.redAccent[200],
      leading: const Icon(
        Icons.error,
        size: 40,
        color: Colors.white,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text(
            "Try again",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
      content: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Error",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              errorMessage,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
