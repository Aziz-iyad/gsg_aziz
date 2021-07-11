import 'package:flutter/material.dart';
import 'package:gsg_aziz2/assigment/model/brain.dart';

import 'FavoriteScreen.dart';
import 'ProductCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  List<ProductBrain> aziz = [
    ProductBrain(title: 'title1', subTitle: 'subtitle1', isFav: false),
    ProductBrain(title: 'title2', subTitle: 'subtitle2', isFav: false),
    ProductBrain(title: 'title3', subTitle: 'subtitle3', isFav: false),
    ProductBrain(title: 'title4', subTitle: 'subtitle4', isFav: false),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          bottom: TabBar(
            controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            tabs: [
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: 'Products',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              itemCount: aziz.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: aziz[index],
                );
              },
            ),
            FavouriteScreen(
              fav: aziz,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.amber,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            tabController.animateTo(index);
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
          ],
        ),
      ),
    );
  }
}
