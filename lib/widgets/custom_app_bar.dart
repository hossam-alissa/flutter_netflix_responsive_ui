import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  CustomAppBar({this.scrollOffset = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                    title: "TV Shows", onTap: () => print("TV Shows")),
                _AppBarButton(title: "Movies", onTap: () => print("Movies")),
                _AppBarButton(title: "My List", onTap: () => print("My List")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: "Home", onTap: () => print("Home")),
                _AppBarButton(
                    title: "TV Shows", onTap: () => print("TV Shows")),
                _AppBarButton(title: "Movies", onTap: () => print("Movies")),
                _AppBarButton(title: "My List", onTap: () => print("My List")),
                _AppBarButton(title: "latest", onTap: () => print('latest')),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () => print("Search"),
                ),
                _AppBarButton(title: "KIDS", onTap: () => print("Kids")),
                _AppBarButton(title: "DVD", onTap: () => print("DVD")),
                _AppBarButton(title: "Movies", onTap: () => print("Movies")),
                IconButton(
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () => print("gift"),
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () => print("notifications"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  _AppBarButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
