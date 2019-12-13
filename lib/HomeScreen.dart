import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool change = false;
  @override
  void initState() {
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: SomeStatelessWidget(
                AnimatedSwitcher(
                  duration: Duration(seconds: 5),
                  child: change
                      ? CircleAvatar(
                          key: UniqueKey(),
                          child: Icon(Icons.check),
                        )
                      : CircleAvatar(
                          key: UniqueKey(),
                          child: Text("A"),
                        ),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: animation,
                      child: child,
                    );
                  },
                ),
                change),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.swap_horiz),
            onPressed: () {
              setState(() {
                change = !change;
              });
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
      
    );
  }
}
// final Widget child;
//   final bool changed;

//   SomeStatelessWidget(this.child, this.changed);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       decoration: changed
//           ? BoxDecoration(
//               color: Theme.of(context).selectedRowColor,
//               borderRadius: BorderRadius.all(Radius.circular(8.0)),
//               shape: BoxShape.rectangle)
//           : null,
//       child: ListTile(
//         leading: child,
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text("This is an example"),
//         ),
//       ),
//     );
//   }
class SomeStatelessWidget extends StatelessWidget {
  final Widget child;
  final bool changed;

  SomeStatelessWidget(this.child, this.changed);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: changed
          ? BoxDecoration(
              color: Theme.of(context).selectedRowColor,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              shape: BoxShape.rectangle)
          : null,
      child: ListTile(
        leading: child,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("This is an example"),
        ),
      ),
    );
  }
}