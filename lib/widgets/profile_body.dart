import 'package:flutter/material.dart';
import 'package:insta_clone/constants/common_size.dart';
import 'package:insta_clone/constants/screen_size.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  SelectedTab _selectedTab = SelectedTab.left;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              _username(),
              _userBio(),
              _editProfileBtn(),
              _tabButtons(),
              _selectedIndicator(),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _selectedIndicator() {
    return AnimatedContainer(
      child: Container(
        height: 3,
        width: size!.width / 2,
        color: Colors.black87,
      ),
      alignment: _selectedTab == SelectedTab.left
          ? Alignment.centerLeft
          : Alignment.centerRight,
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  Row _tabButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: IconButton(
          onPressed: () {
            setState(() {
              _selectedTab = SelectedTab.left;
            });
          },
          icon: ImageIcon(
            AssetImage('assets/images/grid.png'),
            color: _selectedTab == SelectedTab.left
                ? Colors.black45
                : Colors.black26,
          ),
        )),
        Expanded(
            child: IconButton(
          onPressed: () {
            setState(() {
              _selectedTab = SelectedTab.right;
            });
          },
          icon: ImageIcon(
            AssetImage('assets/images/saved.png'),
            color: _selectedTab == SelectedTab.right
                ? Colors.black26
                : Colors.black45,
          ),
        )),
      ],
    );
  }

  Widget _username() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        'test',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _userBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        'this is what i believe!',
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }

  Padding _editProfileBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_gap, vertical: common_xxs_gap),
      child: SizedBox(
        height: 24,
        child: OutlineButton(
          onPressed: () {},
          borderSide: BorderSide(color: Colors.black45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'edit Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

enum SelectedTab { left, right }
