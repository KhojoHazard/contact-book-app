import 'package:contact_book_app/contact_list.dart';
import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Contact',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/CV4.jpg'),
          ),
          const SizedBox(height: 25),
          Center(
            child: Text(
              contact.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Text(
              '${contact.region}, ${contact.country}',
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: const Color(0xff9AADBE),
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Mobile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    contact.phone,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.message,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    contact.email,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Group',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'TechLab Friends',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: const Text(
              'Account Linked',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'WhatsApp',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset('assets/whatsapplogo.png'),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Telegram',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset('assets/telegramlogo.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: const Text(
              'More Options',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Share Contact',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'QR Code',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
