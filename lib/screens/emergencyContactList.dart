import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contacts = [];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
