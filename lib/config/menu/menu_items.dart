import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitled;
  final IconData icon;
  final String link;

  const MenuItem(
      {required this.title,
      required this.subTitled,
      required this.icon,
      required this.link});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitled: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitled: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
];
