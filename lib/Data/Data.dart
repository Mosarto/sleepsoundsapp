import 'package:flutter/cupertino.dart';

class Playlistdata {
  final String name;
  final String description;
  final String quantidade;
  final String style;
  final AssetImage img;
  final List<String> songs;

  Playlistdata({
    required this.name,
    required this.description,
    required this.quantidade,
    required this.style,
    required this.img,
    required this.songs,
  });
}

final List playlists = [
  Playlistdata(
    name: 'Guitar Camp',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '7 Songs',
    style: 'Instrumental',
    img: AssetImage('assets/img/1.jpg'),
    songs: [
      'The Guitars',
      'Lost Without You',
      'City Lights',
      'Romantic',
    ],
  ),
  Playlistdata(
    name: 'Chill-hop',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '7 Songs',
    style: 'Instrumental',
    img: AssetImage('assets/img/2.jpg'),
    songs: [
      'The Guitars',
      'City Lights',
      'Romantic',
    ],
  ),
  Playlistdata(
    name: 'In the forest',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '4 Hours',
    style: 'Lo-fi',
    img: AssetImage('assets/img/3.jpg'),
    songs: [
      'The Guitars',
      'Lost Without You',
      'City Lights',
      'Romantic',
    ],
  ),
  Playlistdata(
    name: 'Happy Day',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '2 Hours',
    style: 'Trap',
    img: AssetImage('assets/img/4.jpg'),
    songs: [
      'The Guitars',
      'Lost Without You',
      'City Lights',
      'Romantic',
    ],
  ),
  Playlistdata(
    name: 'PMM',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '2 Hours',
    style: 'Remix',
    img: AssetImage('assets/img/5.gif'),
    songs: [
      'The Guitars',
      'Lost Without You',
      'City Lights',
      'Romantic',
    ],
  ),
  Playlistdata(
    name: 'Rei Lacoste',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    quantidade: '1 Song',
    style: 'Remix',
    img: AssetImage('assets/img/6.jpg'),
    songs: [
      'Rei Lacoste',
    ],
  ),
];

class ComposerData {
  final String title;
  final String icon;
  final Color color;

  ComposerData({
    required this.title,
    required this.icon,
    required this.color,
  });
}

final List childData = [
  ComposerData(
    title: 'Female',
    icon: 'female.svg',
    color: Color(0xff21283F),
  ),
  ComposerData(
    title: 'White noize',
    icon: 'whitenoize.svg',
    color: Color(0xff4870FF),
  ),
  ComposerData(
    title: 'Lullaby',
    icon: 'lullaby.svg',
    color: Color(0xff21283F),
  ),
];

final List natureData = [
  ComposerData(
    title: 'Rain',
    icon: 'rain.svg',
    color: Color(0xff00D971),
  ),
  ComposerData(
    title: 'Forest',
    icon: 'forest.svg',
    color: Color(0xff21283F),
  ),
  ComposerData(
    title: 'Ocean',
    icon: 'ocean.svg',
    color: Color(0xff21283F),
  ),
  ComposerData(
    title: 'Music',
    icon: 'music.svg',
    color: Color(0xff21283F),
  ),
];

final List animalsData = [
  ComposerData(
    title: 'Birds',
    icon: 'birds.svg',
    color: Color(0xff21283F),
  ),
  ComposerData(
    title: 'Cats',
    icon: 'cats.svg',
    color: Color(0xff21283F),
  ),
  ComposerData(
    title: 'Frogs',
    icon: 'frogs.svg',
    color: Color(0xffFF9C41),
  ),
];
