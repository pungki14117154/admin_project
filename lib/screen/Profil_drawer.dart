import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'Drawer_ListAdmin.dart';
import 'Drawer_detailApk.dart';
import 'Drawer_marketing.dart';
import 'Drawer_profil_perusahaan.dart';
import 'register_admin.dart';

class NavigationProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SolusiLogoWithCardWidget(),
          ListTileWidget(
            icon: 'assets/icons/add-user.png',
            title: 'Tambah Admin',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => RegisterAdmin());
              Navigator.push(context, route);
            },
          ),
          ListTileWidget(
            icon: 'assets/icons/list.png',
            title: 'List Admin',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => ListAdmin());
              Navigator.push(context, route);
            },
          ),
          ListTileWidget(
            icon: 'assets/icons/marketing.png',
            title: 'Tim Marketing',
            press: () {
              Route route = MaterialPageRoute(
                  builder: (context) => MarketingListScreen());
              Navigator.push(context, route);
            },
          ),
          ListTileWidget(
            icon: 'assets/icons/profilPerussahaan.png',
            title: 'Profil Perusahaan',
            press: () {
              Route route = MaterialPageRoute(
                  builder: (context) => DrawerProfilPerusahaan());
              Navigator.push(context, route);
            },
          ),
          ListTileWidget(
            icon: 'assets/icons/tentangAplikasi.png',
            title: 'Tentang Aplikasi',
            press: () {
              Route route = MaterialPageRoute(
                  builder: (context) => DrawerTentangAplikasi());
              Navigator.push(context, route);
            },
          ),
          ListTileWidget(
            icon: 'assets/icons/keluar.png',
            title: 'Keluar',
            press: () {
              //Show dialog to Logout
              showDialogToLogout(context);
            },
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Function press;

  ListTileWidget({this.icon, this.title, this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        icon,
        width: 30,
        height: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFFA6551F),
        ),
      ),
      onTap: press,
    );
  }
}

class SolusiLogoWithCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: Card(
          elevation: 10,
          child: Image.asset(
            logoImage,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}

//dibuat button remove ke login
void showDialogToLogout(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Konfirmasi Logout'),
            Icon(
              Icons.logout,
              color: Color(0xFFF2711D),
            ),
          ],
        ),
        content: Text('Apa anda yakin ingin Logout dari akun anda ?'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => LoginScreen());
              Navigator.push(context, route);
            },
          ),
        ],
      );
    },
  );
}
