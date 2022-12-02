import 'package:flutter/material.dart';
import 'Classes/category.dart';

class second extends StatefulWidget {
  final Category category;
  second({Key? key, required this.category}) : super(key: key);
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    Category category;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 5)
        ],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          widget.category.name,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Sen',
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height*0.9-12,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration (
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Color",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25),
                                ),
                                Row(
                                  children: <Widget>[
                                    ColorDot(
                                      color: Color(0xFFD1C0AC),
                                      isSelected: true,
                                    ),
                                    ColorDot(color: Color(0xFF855210)),
                                    ColorDot(color: Color(0xFF362511)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(height: 1.5,fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (counter > 0) {
                                      setState(() {
                                        counter--;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.remove_circle),
                                  color: Color(0xFF00072C)),
                              Text("$counter"),
                              IconButton(
                                  onPressed: () {
                                    if (counter < 6) {
                                      setState(() {
                                        counter++;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.add_box),
                                  color: Color(0xFF00072C)),
                            ],
                          ),
                          Container(
                            //padding: EdgeInsets.all(8),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFF00072C),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.favorite_border,color: Colors.white,),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xFF00072C)),
                            elevation: MaterialStateProperty.all(5),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Price\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 25,
                                        color: Color(0xFF00072C))),
                                TextSpan(
                                    text: "\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 50,
                                        color: Color(0xFF00072C))),
                                TextSpan(
                                    text: "250",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 50,
                                        color: Color(0xFF00072C))),
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            child: Hero(
                              tag: "1",
                              child: Image.asset(
                                "images/bag_1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        right: 10,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
