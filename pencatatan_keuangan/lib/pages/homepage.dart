import 'package:flutter/material.dart';
import 'reportpage.dart';
import 'accountpage.dart';
import 'deptpage.dart';
import 'transactionpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex =
      0; // 0 = home, 1 = hutang, 2 = laporan, 3 = transaksi, 4 = akun
  final List<Widget> pages = [
    const Center(child: Text('Home Page')),
    const DeptPage(),
    const ReportPage(),
    const TransactionPage(),
    const AccountPage(),
  ];

  Widget bottomNavigationBarWidget() {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: InkWell(
              onTap: () => setState(() => currentPageIndex = 0),
              child: Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentPageIndex == 0
                      ? Colors.yellow
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.home, color: Colors.white, size: 30),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () => setState(() => currentPageIndex = 1),
              child: Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentPageIndex == 1
                      ? Colors.yellow
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.account_balance,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () => setState(() => currentPageIndex = 2),
              child: Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentPageIndex == 2
                      ? Colors.yellow
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.article, color: Colors.white, size: 30),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () => setState(() => currentPageIndex = 3),
              child: Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentPageIndex == 3
                      ? Colors.yellow
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.swap_vert,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () => setState(() => currentPageIndex = 4),
              child: Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentPageIndex == 4
                      ? Colors.yellow
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: pages[currentPageIndex]),
      bottomNavigationBar: bottomNavigationBarWidget(),
    );
  }
}
