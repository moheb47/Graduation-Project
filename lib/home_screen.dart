import 'package:flutter/material.dart';
import 'package:graduation_project/my_flutter_app_icons.dart';
import 'Classes/category.dart';
import 'details_screen.dart';
import 'package:graduation_project/constants/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFF8F8F8),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list,
              size: 40,
            ),
            color: const Color(0xFF00072C),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.8,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search_outlined),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: " What are you looking for? ",
                              hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: AlignmentDirectional.topStart,
              child: const Text(
                "New Products",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),
            Expanded(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories.map((category) {
                    return SizedBox(
                      child: singleProduct(category),
                    );
                  }).toList()),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onTapped(3);
          },
          tooltip: "AR",
          backgroundColor: kBackgroundColor,
          elevation: 4.0,
          child:const Icon(MyFlutterApp.augmented_reality, size: 40, color: kPrimaryColor),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: kPrimaryColor,
              currentIndex: _selectedItem,
              onTap: onTapped,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: kBackgroundColor,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: kTextColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_alert,
                    size: 40,
                    color: kBackgroundColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Icon(
                      Icons.add,
                      size: 35,
                      color: Colors.transparent,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: kBackgroundColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 40,
                    color: kBackgroundColor,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ));
  }

  void onTapped(index) {
    setState(() {
      _selectedItem = index;
    });
  }

  Widget singleProduct(Category category) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => second(
                  category: category,
                )));
      },
      child:Card(
        elevation: 0,
        child: Container(
          width: size.width * 0.3,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child:Image(image: AssetImage(category.urlPhoto),width: 130,) ,
              ),
              Row(
                children: [
                  Text(category.name),
                  Text(category.price.toString()),],
              ),
            ],
          ),
        )
      ),
    );
  }
}
