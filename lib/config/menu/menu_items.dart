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
  MenuItem(
      title: 'Progress Indicators',
      subTitled: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitled: 'Indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitled: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outlined),
      MenuItem(
      title: 'UI Controls + Tiles',
      subTitled: 'Una serie de controles en flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
];
