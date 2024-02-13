import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class impQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("IMP Question"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new ExpandableListView(title: "Question $index");
        },
        itemCount: 50,
      ),
    );
  }
}

class ExpandableListView extends StatefulWidget {
  final String title;

  const ExpandableListView({Key? key, required this.title}) : super(key: key);

  @override
  _ExpandableListViewState createState() => new _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  bool expandFlag = false;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 1.0),
      child: new Column(
        children: <Widget>[
          new Container(
            color: Colors.white,
            padding: new EdgeInsets.symmetric(horizontal: 5.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new IconButton(
                    icon: new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: new Center(
                        child: new Icon(
                          expandFlag
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        expandFlag = !expandFlag;
                      });
                    }),
                new Text(
                  widget.title,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            ),
          ),
          new ExpandableContainer(
              expanded: expandFlag,
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    decoration: new BoxDecoration(
                        border: new Border.all(width: 1.0, color: Colors.black),
                        color: Colors.white),
                    child: new ListTile(
                      title: new Text(
                        "Cool $index",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      leading: new Icon(
                        Icons.local_pizza,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                itemCount: 1,
              ))
        ],
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double collapsedHeight;
  final double expandedHeight;
  final Widget child;

  ExpandableContainer({
    required this.child,
    this.collapsedHeight = 0.0,
    this.expandedHeight = 300.0,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return new AnimatedContainer(
      duration: new Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: screenWidth,
      height: expanded ? expandedHeight : collapsedHeight,
      child: new Container(
        child: child,
        decoration: new BoxDecoration(
            border: new Border.all(width: 1.0, color: Colors.blue)),
      ),
    );
  }
}
