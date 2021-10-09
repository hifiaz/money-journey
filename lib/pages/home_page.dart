import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:money_journey/components/auth_required_state.dart';
import 'package:money_journey/provider/money_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends AuthRequiredState<HomePage> {
  final formatCurrency = NumberFormat.simpleCurrency();
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, WidgetRef ref, _) {
      final money = ref.watch(moneyProvider);
      final expend = ref.watch(expenseValue);
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text('Money Journey'),
          actions: [
            IconButton(
              onPressed: () => context.push('/account'),
              icon: const Icon(Icons.person),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(moneyProvider.notifier).showMoney(),
          child: ListView(
            children: [
              Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Expense',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.red),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                formatCurrency.format(int.parse(expend)),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // Column(
                          //   mainAxisSize: MainAxisSize.min,
                          //   crossAxisAlignment: CrossAxisAlignment.end,
                          //   children: const [
                          //     Text(
                          //       'Income',
                          //       style: TextStyle(
                          //           fontSize: 18.0, color: Colors.green),
                          //     ),
                          //     SizedBox(height: 5),
                          //     Text(
                          //       '2.000.00',
                          //       style: TextStyle(fontWeight: FontWeight.bold),
                          //     )
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: money.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20.0),
                      leading: const SizedBox(
                        height: double.infinity,
                        child: Icon(Icons.star),
                      ),
                      title: Text(money[index].category.toString()),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(money[index].note.toString()),
                          Text(
                            money[index].create.toString(),
                            style: const TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(formatCurrency.format(
                              int.parse(money[index].amount.toString()))),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push('/add');
            // Navigator.pushNamed(context, '/add');
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
