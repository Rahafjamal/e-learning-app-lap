import 'package:englishapp/components/URL_page.dart';
import 'package:englishapp/screens/DrawerScreen.dart';
import "package:flutter/material.dart";

class Verbs extends StatefulWidget {
  const Verbs({super.key});
  @override
  State<Verbs> createState() => _VerbsState();
}

class _VerbsState extends State<Verbs> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verbs",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 22, 147, 141),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(
              "images/R.png",
              width: 30,
            ),
          ),
        ),
        actions: [
          Image.asset(
            "images/user.png",
            scale: 12,
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 22, 147, 141),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(0)),
            ),
            width: double.infinity,
            height: 200,
            child: Image.asset(
              "images/verb.png",
              scale: 3,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.all(20),
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: const [
                  Text(
                    "Summary",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Videos",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 510,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "What is a Verb?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "A verb is a word that expresses action or otherwise helps to make a sentence",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Action Verb",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Words such as do, come, go and write are action verbs. Sometimes action verbs express an action that cannot be seen: believe, remember, know, think and understand.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Linking Verbs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Some verbs help to make a statement, not by expressing an action but by serving as a link between two words. These verbs are called linking verbs.The most commonly used linking verbs are forms of the verb be.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Helping Verbs or Auxiliary Verbs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Helping verbs (also called auxiliary verbs) work together with the main verb as a unit. There are two main groups of helping verbs: Primary Helping Verbs and Modal Helping Verbs.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Primary Helping Verbs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "different forms of the word be"
                        "do, did, does"
                        "has, have, had",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Primary Helping Verbs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "can, could"
                        "may, might"
                        "will, would"
                        "shall, should"
                        "must"
                        "ought to",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
                ListView(
                  children: [
                    URLclass(
                        mylatfotmtitle: "Verbs",
                        mylatformicon: Icons.video_collection,
                        myfunction: verbsUrl)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
