import 'package:flutter/material.dart';

class  Dynamicscreen extends StatelessWidget {
   Dynamicscreen ({super.key});

  final List<Map<String,String>>users=[
    {
      "name":"charvi",
      "description":" flutter developer",
      "image":"https://picsum.photos/250?image=9"
    },
    {
      "name":"riya",
      "description":" UI developer",
      "image":"https://picsum.photos/250?image=9"
    },
    {
  "name":"rita",
      "description":" backend developer",
      "image":"https://picsum.photos/250?image="
},
  ];
  final  List<Map<String,dynamic>>services=[
   {
     "title":"Web Design",
     "icon":Icons.web,
     "description":" create beautiful websites"
   },
   {
   "title":"App Development",
   "icon":Icons.phone_android,
   "description":"Flutter App"
   },
   {
   "title":"SEO",
   "icon":Icons.trending_up,
   "description":"rank your site"
   },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic List & Grid"),
        ),
        body:SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Users",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (context,index){
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal:12,vertical: 6),
                        child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(users[index]["image"]!),
                        ),
                        title: Text(users[index]["name"]!),
                        subtitle: Text(users[index]["description"]!),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "Services",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:services.length,
                    gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3/2,
                      ),
                    itemBuilder: (context,index) {
                      return Card(
                        margin: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  services[index]["icon"],
                                  size: 40,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  services[index]["title"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  services[index]["description"]!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                          ),
                        ),
                      );
                    },
                  ),
                  ],
            )
        )
    );
  }
}
