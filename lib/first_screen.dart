import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'barra_busqueda.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            BarraBusqueda(
              url: "www.youtubevideos.com",
              numeroPestanas: "2",
            ),
            StickyHeader(
                header: Container(
                  width: size.width,
                  height: size.height * 0.08,
                  color: Colors.black,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.menu_rounded,
                              size: 35,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Text(
                          "XVIDEOS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 35,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                content: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.06,
                      child: Center(
                        child: Text("THE BEST FREE VIDEOS SITE"),
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      height: size.height * 0.07,
                      color: Colors.white,
                      width: size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 3),
                            child: Container(
                              width: size.width * 0.10,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              height: size.height * 0.2,
                              child: Center(
                                child: Icon(Icons.camera_alt),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Container(
                              width: size.width * 0.5,
                              height: size.height,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Search 9,932,232",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Container(
                              width: size.width * 0.3,
                              height: size.height,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.search),
                                  Text(
                                    "Search",
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Video(
                      title:
                          "The title of the video must goes here dasdsadasdas",
                      category: "Suggested",
                      imagen: "assets/imagen.jpg",
                      duration: "20 min",
                      author: "Alex Adams",
                    ),
                    Video(
                      title:
                          "The title of the video must goes here dasdsadasdas",
                      category: "Suggested",
                      imagen: "assets/imagen.jpg",
                      duration: "20 min",
                      author: "Alex Adams",
                    ),
                    Video(
                      title:
                          "The title of the video must goes here dasdsadasdas",
                      category: "Suggested",
                      imagen: "assets/imagen.jpg",
                      duration: "20 min",
                      author: "Alex Adams",
                    ),
                    Video(
                      title:
                          "The title of the video must goes here dasdsadasdas",
                      category: "Suggested",
                      imagen: "assets/imagen.jpg",
                      duration: "20 min",
                      author: "Alex",
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Video extends StatelessWidget {
  String title;
  String duration;
  String imagen;
  String author;
  String category;

  Video({this.author, this.category, this.duration, this.imagen, this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: size.width * 0.8,
          height: size.height * 0.2,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(imagen))),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: size.width * 0.8,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                author,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text(
                " - ",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text(
                category,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text(
                " - ",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      duration,
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
