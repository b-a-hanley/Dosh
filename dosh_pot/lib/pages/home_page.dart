import 'package:flutter/material.dart';
import '../components/my_app_bar.dart';
import '../components/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: MyAppBar(name: "AnchoredMind", context),
      body: Column( 
        children: [
          
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Card(
                    color: Theme.of(context).colorScheme.onSecondary,
                    margin:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text("Amount"),
                      trailing: Text("£205.00"),
                      onTap: () {},
                    )
                ),
                Card(
                    color: Theme.of(context).colorScheme.onSecondary,
                    margin:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Column(
                        children: [
                          Text("Monthly Expenditure"),
                          Padding(padding: EdgeInsets.all(100)),
                          Card(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          )
                        ],
                      ),
                      onTap: () {},
                    )
                ),
                Card(
                    color: Theme.of(context).colorScheme.primary,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white, // Outline color
                        width: 3,          // Outline width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text("Amount"),
                      trailing: Text("£205.00"),
                      onTap: () {},
                    )
                ),
              ],
            )
          ),
          MyButton(
            name: "Add Amount",
            icon: Icons.add,
            colour: Colors.white,
            onPressed: () {},
          ),
        ],
      )
       
      
    );
  }
}
