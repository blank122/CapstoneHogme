import 'package:flutter/material.dart';
import 'package:hogme_flutter_application/utils/widgets/text_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/icons/icon_hogme.png',
            color: const Color.fromARGB(255, 29, 173, 72),
          ),
        ),
        title: text24Bold(text: 'Hogme'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 71, 71, 71),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 71, 71, 71),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.density_medium,
              color: Color.fromARGB(255, 71, 71, 71),
            ),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: text16Normal(text: 'A'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text36Normal(text: 'Dashboard'),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text24Normal(text: 'Announcement'),
                    Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.arrow_outward_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  height: 90.0,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text24Normal(text: 'Tutorials'),
                    Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.arrow_outward_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            text20Normal(text: 'Livestocks'),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 200.0,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
      bottomNavigationBar: DefaultTabController(
        length: 6,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            child: Container(
              color: const Color.fromARGB(255, 17, 54, 25),
              child: const TabBar(
                labelColor: Color.fromARGB(255, 54, 185, 87),
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 10.0),
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.play_circle,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.calendar_month,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.pets,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.sms_outlined,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_search_sharp,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
