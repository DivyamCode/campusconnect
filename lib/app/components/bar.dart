import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      selected: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      selectedTileColor: Colors.indigoAccent.shade100,
      title: Text(
        "Welcome Back",
        style: Theme.of(context).textTheme.subtitle1!.merge(
              const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
      ),
      subtitle: Text(
        "A Greet welcome to you all.",
        style: Theme.of(context).textTheme.subtitle2,
      ),
      trailing: PopUpMen(
        menuList: const [
          PopupMenuItem(
            child: ListTile(
              leading: Icon(
                CupertinoIcons.person,
              ),
              title: Text("My Profile"),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(
                CupertinoIcons.bag,
              ),
              title: Text("My Bag"),
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            child: Text("Settings"),
          ),
          PopupMenuItem(
            child: Text("About Us"),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text("Log Out"),
            ),
          ),
        ],
        icon: CircleAvatar(
          backgroundImage: const NetworkImage(
            'https://images.unsplash.com/photo-1644982647869-e1337f992828?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
          ),
          child: Container(),
        ),
      ),
    );
  }
}


class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}


