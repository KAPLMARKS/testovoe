import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.sort,
            size: 24,
          ),
          color: Colors.black,
          padding: const EdgeInsets.all(8),
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: const Color(0xFFF5F7FA),
          ),
          onPressed: () {},
        ),
        title: const Text(
          '+12021234567',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: const Icon(Icons.insert_chart_outlined, size: 15),
              padding: const EdgeInsets.all(12.5),
              color: Colors.black,
              style: IconButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: const Color(0xFFF5F7FA),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: const Icon(Icons.sms_outlined, size: 15),
              padding: const EdgeInsets.all(12.5),
              color: Colors.black,
              style: IconButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: const Color(0xFFF5F7FA),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications_none, size: 15),
              padding: const EdgeInsets.all(12.5),
              color: Colors.black,
              style: IconButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: const Color(0xFFF5F7FA),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
