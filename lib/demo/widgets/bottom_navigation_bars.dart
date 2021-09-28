import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class BottomNavigationBars extends StatelessWidget {
  const BottomNavigationBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Header(label: 'Bottom Navigation Bar'),
        _BottomNavigationBarFixed(),
        _BottomNavigationBarShifting(),
      ],
    );
  }
}

class _BottomNavigationBarFixed extends StatelessWidget {
  const _BottomNavigationBarFixed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text('Fixed'),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Music'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: 'Place'),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ],
    );
  }
}

class _BottomNavigationBarShifting extends StatelessWidget {
  const _BottomNavigationBarShifting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text('Shifting'),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Music'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: 'Place'),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ],
    );
  }
}
