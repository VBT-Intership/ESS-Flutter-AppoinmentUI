import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  get pageWidth => MediaQuery.of(context).size.width;
  get pageHeight => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          buildCircleProfileImage(),
          SizedBox(height: pageHeight * 0.05),
          buildProfileName(context),
          SizedBox(height: pageHeight * 0.02),
          buildProfileTitle(context),
          SizedBox(height: pageHeight * 0.05),
          buildAllInformationCards(context)
        ],
      ),
    );
  }

  Expanded buildAllInformationCards(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildInformationCards(
            context,
            Colors.blue[100],
            Icon(
              Icons.people,
              color: Colors.blue[700],
            ),
            "1000+",
            "Patients"),
        buildInformationCards(
            context,
            Colors.red[100],
            Icon(
              Icons.person,
              color: Colors.red[700],
            ),
            "10 Yrs",
            "Experience"),
        buildInformationCards(
            context,
            Colors.yellow[100],
            Icon(
              Icons.star_border,
              color: Colors.yellow[700],
            ),
            "4.5",
            "Ratings"),
      ],
    ));
  }

  SizedBox buildInformationCards(BuildContext context, Color color, Icon icon,
      String firstTitle, String secondTitle) {
    return SizedBox(
      width: pageWidth * 0.3,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            buildColorfulRectangleType(icon, color),
            SizedBox(
              height: pageHeight * 0.03,
            ),
            Text(
              firstTitle,
              style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: pageHeight * 0.01,
            ),
            Text(
              secondTitle,
              style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(
                    color: Colors.grey[700],
                  ),
            ),
            SizedBox(
              height: pageHeight * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  ClipRRect buildColorfulRectangleType(Icon icon, Color color) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
      child: ColoredBox(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }

  Center buildProfileTitle(BuildContext context) {
    return Center(
      child: Text(
        "Viragolist",
        style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(
              color: Colors.grey[700],
            ),
      ),
    );
  }

  Center buildProfileName(BuildContext context) {
    return Center(
      child: Text(
        "Dr.Ebubekir Sezer",
        style: Theme.of(context).primaryTextTheme.headline6.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Card buildCircleProfileImage() {
    return Card(
      elevation: 14.0,
      shape: CircleBorder(
          side: BorderSide(width: pageWidth * 0.01, color: Color(0xffe3dcd7))),
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Color(0xffe3dcd7),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('lib/assets/ebubekir.jpg'),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
