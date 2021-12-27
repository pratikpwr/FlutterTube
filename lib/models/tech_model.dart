class TechModel {
  final String title;
  final String imageUrl;
  final String desc;
  final List<String>? channels;

  TechModel(
      {required this.title,
      required this.desc,
      required this.imageUrl,
      this.channels});

  static List<TechModel> techs = [
    TechModel(
      title: 'Flutter',
      desc: '',
      channels: flutterChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/flutter/flutter.png',
    ),
    TechModel(
      title: 'NodeJS',
      desc: '',
      channels: nodeChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/nodejs/nodejs.png',
    ),
    TechModel(
      title: 'React Native',
      desc: '',
      channels: reactNativeChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/react-native/react-native.png',
    ),
    TechModel(
      title: 'React',
      desc: '',
      channels: reactChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/react/react.png',
    ),
    TechModel(
      title: 'Angular',
      desc: '',
      channels: angularChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/angular/angular.png',
    ),
    TechModel(
      title: 'Vue',
      desc: '',
      channels: vueChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/vue/vue.png',
    ),
    TechModel(
      title: 'Django',
      desc: '',
      channels: djangoChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/django/django.png',
    ),
    TechModel(
      title: 'Flask',
      desc: '',
      channels: flaskChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/flask/flask.png',
    ),
    TechModel(
      title: 'Laravel',
      desc: '',
      channels: laravelChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/laravel/laravel.png',
    ),
    TechModel(
      title: 'Ruby on Rails',
      desc: '',
      channels: rubyChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ruby/ruby.png',
    ),
    TechModel(
      title: 'Android App(Native)',
      desc: '',
      channels: androidChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/android/android.png',
    ),
    TechModel(
      title: 'Ios App(Native)',
      desc: '',
      channels: iosChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ios/ios.png',
    ),
    TechModel(
      title: 'GoLang',
      desc: '',
      channels: goChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/go/go.png',
    ),
    TechModel(
      title: 'Javascript',
      desc: '',
      channels: javascriptChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png',
    ),
    TechModel(
      title: 'Blockchain',
      desc: '',
      channels: blockchainChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/bitcoin/bitcoin.png',
    ),
    TechModel(
      title: 'Cloud',
      desc: '',
      channels: cloudChannels,
      imageUrl:
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/aws/aws.png',
    ),
  ];
}

const List<String> nodeChannels = [
  'UCQPYJluYC_sn_Qz_XE-YbTQ',
  'UCmXmlB4-HJytD7wek0Uo97A',
  'UCo9xTRmg1SqQ5JSsA2fAgJw',
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UCWv7vMbMWH4-V0ZXdmDpPBA',
  'UCvHX2bCZG2m9ddUhwxudKYA',
];
const List<String> vueChannels = [
  'UCshZ3rdoCLjDYuTR_RBubzw',
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UCvHX2bCZG2m9ddUhwxudKYA',

];
const List<String> reactNativeChannels = [
  'UCWv7vMbMWH4-V0ZXdmDpPBA',
];
const List<String> reactChannels = [
  'UCmXmlB4-HJytD7wek0Uo97A',
  'UCo9xTRmg1SqQ5JSsA2fAgJw',
  'UCWv7vMbMWH4-V0ZXdmDpPBA',
];
const List<String> angularChannels = [
  'UCWv7vMbMWH4-V0ZXdmDpPBA',
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UCvHX2bCZG2m9ddUhwxudKYA',

];
const List<String> djangoChannels = [
  'UC4JX40jDee_tINbkjycV4Sg',
];
const List<String> flaskChannels = [
  'UC4JX40jDee_tINbkjycV4Sg',

];
const List<String> laravelChannels = [
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UCvHX2bCZG2m9ddUhwxudKYA',
];
const List<String> rubyChannels = [];
const List<String> androidChannels = [];
const List<String> iosChannels = [];
const List<String> goChannels = [
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UC4JX40jDee_tINbkjycV4Sg',
  'UCwFl9Y49sWChrddQTD9QhRA',

];
const List<String> javascriptChannels = [
  'UCmXmlB4-HJytD7wek0Uo97A',
  'UCWv7vMbMWH4-V0ZXdmDpPBA',
  'UCo9xTRmg1SqQ5JSsA2fAgJw',
  'UCW5YeuERMmlnqo4oq8vwUpg',
  'UCvHX2bCZG2m9ddUhwxudKYA',
];
const List<String> blockchainChannels = [];
const List<String> cloudChannels = [];
const List<String> flutterChannels = [
  //flutter official
  'UCwXdFgeE9KYzlDdR7TG9cMw',
  //metechviral
  'UCFTM1FGjZSkoSPDZgtbp7hA',
  //reso coder
  'UCSIvrn68cUk8CS8MbtBmBkA',
  //marcusng
  'UC6Dy0rQ6zDnQuHQ1EeErGUA',
  //sanskar tiwaril
  'UCsPdgUIoOBTBI1UmulW1pdw',
  //the growing devveloper
  'UCDop5l09jz_ExPaQwGL-RrQ',
  //codex
  'UCQ00Ywz-ygK-yHzKluEsABA',
  'UCW5YeuERMmlnqo4oq8vwUpg',
  //coder monk
  'UCywpR6E1lpk66CHhGziz8Bg',
  //filled Stack
  'UC2d0BYlqQCdF9lJfydl_02Q',
  //fun with flutter
  'UCU8Mj6LLoNBXqqeoOD64tFg',
  //techie blossom
  'UC3wqIkiaOUpO6EjJoCwH6_Q',
  //mobile programmer
  'UC5lbdURzjB0irr-FTbjWN1A',
  //Retro portal studio
  'UCW2ATgwtNrsBrE-piE2TIrA',
  //made with flutter
  'UCQheyq1vvmd0RaKv1EDyGfA',
  //afg programmer
  'UCuXm84E6yWF0dIKmwvwc9sQ',
  //the flutter way
  'UCJm7i4g4z7ZGcJA_HKHLCVw',
  //code with andrea
  'UCrTnsT4OYZ53l0QGKqLeD5Q',
  //raja yogan
  'UCjBxAm226XZvgrkO-JyjJgQ',
  //bibek tamsina
  'UCTzRJl-1xd_7c4dK5ldnRYA',
  //pro coach dart
  'UCGF8TZgxizDN3MDSulUP5bg',
  //robby rehmana
  'UCb8Pi4mt745NPfvlVZfQydA',
];
