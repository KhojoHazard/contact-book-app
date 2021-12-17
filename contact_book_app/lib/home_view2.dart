import 'package:contact_book_app/contact_details_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'contact_list.dart';

class HomeView2 extends StatelessWidget {
  HomeView2({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> data = [
    {
      "name": "Samuel Simpi",
      "phone": "+233 55-261-9882",
      "email": "samuelsimpi@gmail.com",
      "country": "Ghana",
      "region": "Tema",
      "picture": "assets/CV.jpg"
    },
    {
      "name": "Tobi Tobinco ",
      "phone": "+233 45-345-1231",
      "email": "tobitobinco@gmail.com",
      "country": "Senegal",
      "region": "Dakar",
       "picture": "assets/CV3.jpg"
    },
    {
      "name": "Joan G",
      "phone": "+233 12-213-0930",
      "email": "JoanG@gmail.com",
      "country": "Germany",
      "region": "Munich",
      "picture": "assets/CV4.jpg"
    },
    {
      "name": "Ki Soel",
      "phone": "723-51374512",
      "email": "KiJunSoel@yahoo.com",
      "country": "South Korea",
      "region": "Soeul",
      "picture": "assets/1.png"
    },
    {
      "name": "Dean Winchester",
      "phone": "+91 54-353-342",
      "email": "DeanWinchester@gmail.com",
      "country": "texas",
      "region": "El Paso",
      "picture": "assets/3.jpg"
    },
    {
      "name": "Wayne Rooney",
      "phone": "1-315-566-3358",
      "email": "slabheadWazza@gmail.com",
      "country": "England",
      "region": "Manchester",
      "picture": "assets/10.jpg"
    },
    {
      "name": "Cristiano Ronaldo",
      "phone": "1-427-444-2085",
      "email": "AlvaroGeorginasuiii@gmail.com",
      "country": "Portugal",
      "region": "Madeira",
      "picture": "assets/4.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: const Text(
          'My Contacts',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/CV.jpg'),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search by name or number',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recents',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                            contact: Contact(
                                country: 'Ghana',
                                email: 'astalavista.com',
                                name: 'Dracula Translavania',
                                phone: '+60 957634569',
                                region: 'Greater Accra Region')
                                );
                      }));
                    },
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/CV2.jpg'),
                    ),
                    title: const Text(
                      'Dracula Translavania',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text('+61 957634569'),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsView(
                            contact: contact,
                          );
                        }));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/CV3.jpg'),
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('${element['phone']}'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 5,
                      endIndent: 5,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            ),
          ],
        ),
      ),
    );
  }
}
