import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/coustom_bottom_nav_bar.dart';

import '../../constantes.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: SizedBox(),
      //   title: Text("Accueil"),
      //   centerTitle: true,
      // ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
