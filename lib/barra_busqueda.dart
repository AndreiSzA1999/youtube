import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  BarraBusqueda({@required this.url, @required this.numeroPestanas});
  final String url;
  final String numeroPestanas;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      color: Color(0xff1c1b21),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Container(
              height: size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff33313c),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.shield_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.lock_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 180),
                    child: Text(
                      url,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      maxLines: 1,
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                numeroPestanas,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.more_vert,
            size: 28,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
