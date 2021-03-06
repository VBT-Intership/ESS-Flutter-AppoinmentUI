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
      body: Column(
        children: [
          buildProfileInformationList(context),
          buildAppoinmentButton(context),
        ],
      ),
    );
  }

  Expanded buildProfileInformationList(BuildContext context) {
    return Expanded(
      flex: 11,
      child: ListView(
        children: <Widget>[
          buildCircleProfileImage(),
          SizedBox(height: pageHeight * 0.05),
          buildProfileName(context),
          SizedBox(height: pageHeight * 0.02),
          buildProfileTitle(context),
          SizedBox(height: pageHeight * 0.05),
          buildAllInformationCards(context),
          SizedBox(height: pageHeight * 0.02),
          Container(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "About Doctor",
                      style:
                          Theme.of(context).primaryTextTheme.headline6.copyWith(
                                color: Colors.black,
                              ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae arcu ullamcorper, ullamcorper sem id, dapibus nulla. Aliquam ac nibh placerat, congue turpis ut, imperdiet sapien. Proin eget nisl non sem laoreet facilisis. Duis elit tellus, eleifend et mi id, faucibus maximus ipsum."),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Working Time",
                      style:
                          Theme.of(context).primaryTextTheme.headline6.copyWith(
                                color: Colors.black,
                              ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0),
                    child: Text("Mon - Sat (08:30 AM - 09:00 PM)"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Communication",
                      style:
                          Theme.of(context).primaryTextTheme.headline6.copyWith(
                                color: Colors.black,
                              ),
                    ),
                  ),
                  buildCommunicationCards(
                    context,
                    Colors.red[100],
                    Icon(
                      Icons.chat,
                      color: Colors.red[700],
                    ),
                    "Messaging",
                    "Chat me up, share photos",
                  ),
                  buildCommunicationCards(
                    context,
                    Colors.blue[100],
                    Icon(
                      Icons.call,
                      color: Colors.blue[700],
                    ),
                    "Audio Call",
                    "Call your doctor directly",
                  ),
                  buildCommunicationCards(
                    context,
                    Colors.yellow[100],
                    Icon(
                      Icons.videocam,
                      color: Colors.yellow[700],
                    ),
                    "Video Call",
                    "See your doctor live",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildAppoinmentButton(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          bottom: 8.0,
          top: 0.0,
        ),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.green[200],
          child: Text(
            "Book Appoinment",
            style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  ListTile buildCommunicationCards(BuildContext context, Color color, Icon icon,
      String titleText, String bodyText) {
    return ListTile(
      leading: Container(
        width: pageWidth * 0.15,
        height: pageHeight * 0.07,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: icon,
      ),
      title: Text(
        titleText,
        style: Theme.of(context)
            .primaryTextTheme
            .headline6
            .copyWith(color: Colors.black, fontSize: 18.0),
      ),
      subtitle: Text(
        bodyText,
        style: Theme.of(context)
            .primaryTextTheme
            .bodyText1
            .copyWith(color: Colors.grey),
      ),
    );
  }

  Row buildAllInformationCards(BuildContext context) {
    return Row(
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
    );
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
