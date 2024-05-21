import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            decoration: const BoxDecoration(
              color: Color(0xff20252B),
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Buy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Buy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: const Text(
                        'Limit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: const Text(
                        'Market',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: const Text(
                        'Stop-Limit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Limit Price'),
                          Icon(Icons.info_outline)
                        ],
                      ),
                      Text('0.00 USD')
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [Text('Amount'), Icon(Icons.info_outline)],
                      ),
                      Text('0.00 USD')
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [Text('Type'), Icon(Icons.info_outline)],
                      ),
                      Row(
                        children: [
                          Text('Good till cancelled'),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Text('Post Only'),
                    Icon(Icons.info),
                  ],
                ),
                const Row(
                  children: [
                    Text('Total'),
                    Text('0.00'),
                  ],
                ),
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => _showModalSheet(context),
          child: const Text('Show Modal Button'),
        ),
      ),
    );
  }
}
