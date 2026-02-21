import 'package:flutter/material.dart';
import 'package:flutter_network/features/random_user_entity.dart';
import 'package:flutter_network/service/random_user_service.dart';

class RandomUserPage extends StatefulWidget {
  const RandomUserPage({super.key});

  @override
  State<RandomUserPage> createState() => _RandomUserPageState();
}

class _RandomUserPageState extends State<RandomUserPage> {
  List<RandomUserEntity> _randomUsers = [];
  @override
  void initState() {
    super.initState();
    _fetchRandomUsers();
  }

  Future<void> _fetchRandomUsers() async {
    final response = await RandomUserService().getRandomUsers();
    setState(() {
      _randomUsers = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random User')),
      body: RefreshIndicator(
        onRefresh: _fetchRandomUsers,
        child: ListView.builder(
          itemCount: _randomUsers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_randomUsers[index].name.first),
              subtitle: Text(_randomUsers[index].name.last),
              leading: Image.network(_randomUsers[index].picture.medium),
            );
          },
        ),
      ),
    );
  }
}
