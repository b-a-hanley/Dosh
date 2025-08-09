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
      backgroundColor: Colors.white,
      appBar: MyAppBar(context, name: 'Dosh'),
      body: Column( 
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Card(
                    color: Theme.of(context).colorScheme.surface,
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
                    color: Theme.of(context).colorScheme.surface,
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
                            color: Colors.blue,
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
                    color: Theme.of(context).colorScheme.surface,
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
            colour: Theme.of(context).colorScheme.surface,
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Theme.of(context).colorScheme.surface,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Card Payment'),
                          ElevatedButton(
                            child: const Text('Submit card details'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              );
            },
          ),
        ],
      )
    );
  }
}
