import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('WhatsApp'),
              actions: [
                const Icon(Icons.camera_alt_rounded),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.search),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text('New group'),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text('New braodcast'),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Linked devices'),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Starred Messages'),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Settings'),
                    ),
                  ],
                ),
              ],
              backgroundColor: Colors.teal,
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Text('Chats'),
                  Text('Status'),
                  Text('Calls'),
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Image(
                      image: AssetImage('images/community.PNG'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Introducing Communities',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Easily organize your related groups and send announcements Now, your communities, like neighborhoods or schools can have their own space',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Start Your Community',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                    ),
                    title: Text("Julain Wan"),
                    subtitle: Text('Hello how are you?'),
                    trailing: Text('10:33 Pm'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 2)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                              ),
                            ),
                            title: const Text("Jhon"),
                            subtitle: const Text('Today, 1:32pm'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 2)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                              ),
                            ),
                            title: const Text("Jhon"),
                            subtitle: const Text('Today, 1:32pm'),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                      ),
                      title: Text("Julain Wan"),
                      subtitle: Text('You Missed a call 11:23 am'),
                      trailing: Icon(Icons.phone));
                },
              ),
            ]),
          ),
        ));
  }
}
