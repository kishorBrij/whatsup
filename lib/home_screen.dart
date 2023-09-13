import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.people),
                ),
                Tab(
                  child: Text('Chart'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child:  Text('Call')
                ),
              ],
            ),
            actions:  [
              const Icon(Icons.camera_alt),
              const SizedBox(width: 15,),
              const Icon(Icons.search),
              //const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const[
                    PopupMenuItem(
                      value: 1,
                        child: Text('New Group')
                    ),

                    PopupMenuItem(
                        value: 2,
                        child: Text('Setting')
                    ),

                    PopupMenuItem(
                        value: 3,
                        child: Text('Logout')
                    ),
                  ]
              ),
              const SizedBox(width: 10,),
            ],
          ),
          
          body:  TabBarView(
            children: [
              const Center(child: Text('Introducing Communities',
              style: TextStyle(fontSize: 25),
              )),

             ListView.builder(
               itemCount: 5,
                 itemBuilder: (context, index){
                   return const ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage('https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s='),
                     ),
                     title: Text('Rajesh'),
                     subtitle: Text('where r u'),
                     trailing: Text('6:30 Pm'),
                   );
                 }
             ),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index){

                    if(index == 0){
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
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
                                        color: Colors.green,
                                        width: 3
                                    )
                                ),

                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s='),
                                ),
                              ),
                              title: const Text('Rajesh'),
                              subtitle: const Text('35 min ago'),

                            ),
                          ],
                        ),
                      );
                    }else{
                      return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),

                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s='),
                          ),
                        ),
                        title: const Text('Ramesh'),
                        subtitle: const Text('30 min ago'),

                      );
                    }


                  }
              ),
              ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s='),
                      ),
                      title: const Text('Rajesh'),
                      subtitle: Text( index%2 ==0 ? 'You missed call' : 'call time is 12:32'),
                      trailing: Icon(index%2 ==0 ? Icons.phone : Icons.video_call),
                    );
                  }
              ),
            ],
          ),

        ),
    );
  }
}
