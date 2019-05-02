// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:kibabi_market/ecommerce/ecommerce1.dart';



// class Menu extends StatelessWidget {
//   @override
//     Widget build(BuildContext context) {
//       void affiche(){
//         if(curren)
//       }
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('KIBABI MARKET'),
//           backgroundColor: Colors.blue,
//           elevation: 0,
//         ),
//         bottomNavigationBar: BottomNavigationBar(
          
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//             BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Recherche')),
//             BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('Favorite')),
//             BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Mon compte')),
//           ],
//           currentIndex: 0,
//           type: BottomNavigationBarType.fixed,
//           fixedColor: Colors.red,
//         ),
//       );
//     }
// }


import 'package:flutter/material.dart';
import 'package:kibabi_market/MyBoutique/page/dashboard/dashboard_two_page.dart';
import 'package:kibabi_market/ecommerce/ecommerce1.dart';
import 'package:kibabi_market/login/login_two_page.dart';
import 'package:kibabi_market/profile/profile3.dart';

class Menu extends StatefulWidget {

  @override
  MenuState createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {
  int _currentIndex = 0;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
    void initState() {
      _children.add(EcommerceOnePage());
      _children.add(ProfileThreePage());
      _children.add(DashboardTwoPage());
      _children.add(LoginTwoPage());

      _appBars.add(_buildAppBar());
      _appBars.add(_buildAppBarOne("Recherche"));
      _appBars.add(_buildAppBarOne("Favorite"));
      _appBars.add(_buildAppBarOne("Mon Compte"));
      super.initState();
    }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _appBars[_currentIndex],
        body: _children[_currentIndex],
        bottomNavigationBar: _buildBottomNavigationBar(),
      );
    }

  Widget _buildAppBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Container(
              child: Card(
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      hintText: "Rechercher produit",
                      border: InputBorder.none,
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
  Widget _buildAppBarOne(String title) {
    return AppBar(
      bottom: PreferredSize(child: Container(color: Colors.grey.shade200, height: 1.0,), preferredSize: Size.fromHeight(1.0)),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: TextStyle(color: Colors.black)),
    );
  }


  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Recherche")),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favorite")),BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          title: Text("Mon compte")),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
          _currentIndex = index;
        });
  }

}







