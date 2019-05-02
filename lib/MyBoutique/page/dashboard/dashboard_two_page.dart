import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kibabi_market/MyBoutique/page/dashboard/dashboard_two/dashboard_menu_row_two.dart';
import 'package:kibabi_market/widgets/common_scaffold.dart';

class DashboardTwoPage extends StatelessWidget {
  Widget bodyData() => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Mes activites",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              DashboardMenuRowTwo(
                firstIcon: FontAwesomeIcons.bolt,
                firstLabel: "NOUVEAU PRODUIT",
                secondIcon: FontAwesomeIcons.tint,
                secondLabel: "MES DEMANDES",
                thirdIcon: FontAwesomeIcons.mobile,
                thirdLabel: "BOUTIQUE",
              ),
              DashboardMenuRowTwo(
                firstIcon: Icons.favorite,
                firstLabel: "FAVORITE",
                secondIcon: FontAwesomeIcons.tv,
                secondLabel: "PRODUITS",
                thirdIcon: FontAwesomeIcons.chrome,
                thirdLabel: "AUTRES",
              ),
              SizedBox(
                height: 10.0,
              ),
              
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Pay",
     // showFAB: false,
      bodyData: bodyData(),
    );
  }
}
