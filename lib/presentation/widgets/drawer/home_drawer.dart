

import 'package:company_test/controller/home/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Drawer(
      child: Container(
        color: Theme.of(context).drawerTheme.backgroundColor,
        child: Column(
          children: [
            // Profile Section
            Container(
              padding: const EdgeInsets.only(top: 40,left: 10,bottom: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://i2.imageban.ru/out/2024/10/29/ca92dd873124bf2b13e0808707ad8958.png'), // Replace with your photo URL
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Parmeet Singh',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+91 9871917515',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Drawer Items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Linkedin'),
              onTap: () {
                ref.read(homeScreenProvider).openLinkedin();
                // Handle tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Portfolio'),
              onTap: () {
                ref.read(homeScreenProvider).openPortfolio();
                // Handle tap
              },
            ),
            const Spacer(),
            // Footer
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '© 2024 Parmeet Singh',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}