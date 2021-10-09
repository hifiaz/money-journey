import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:money_journey/provider/money_provider.dart';
import 'package:money_journey/utils/constants.dart';

class AddedPage extends ConsumerStatefulWidget {
  const AddedPage({Key? key}) : super(key: key);

  @override
  _AddedPageState createState() => _AddedPageState();
}

class _AddedPageState extends ConsumerState<AddedPage> {
  bool _isLoading = false;
  late final TextEditingController _amountController;
  late final TextEditingController _noteController;
  late final TextEditingController _dateController;

  String category = 'Food';

  @override
  void initState() {
    _amountController = TextEditingController();
    _noteController = TextEditingController();
    _dateController = TextEditingController();
    _dateController.text = DateFormat.yMd().format(DateTime.now());
    super.initState();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _noteController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Amount'),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration.collapsed(
                          hintText: 'Input money'),
                      keyboardType: TextInputType.number,
                      controller: _amountController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Category'),
                    const SizedBox(height: 5),
                    Wrap(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              category == 'Food' ? null : Colors.white,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                category = 'Food';
                              });
                            },
                            icon: const Icon(Icons.food_bank),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor:
                              category == 'Grocery' ? null : Colors.white,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                category = 'Grocery';
                              });
                            },
                            icon: const Icon(Icons.local_grocery_store),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor:
                              category == 'Debet' ? null : Colors.white,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                category = 'Debet';
                              });
                            },
                            icon: const Icon(Icons.payment),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Note'),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration.collapsed(
                          hintText: 'Your note (optional)'),
                      maxLines: 2,
                      controller: _noteController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Date'),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Your note (optional)'),
                        controller: _dateController,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(
              onPressed: _isLoading ? null : _saveData,
              child: Text(_isLoading ? 'Loading' : 'Save'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _saveData() async {
    setState(() {
      _isLoading = true;
    });
    final user = supabase.auth.currentUser;
    final updates = {
      'belong': user!.id,
      'amount': _amountController.text,
      'category': category,
      'note': _noteController.text,
      'create': _dateController.text,
    };
    final response = await supabase.from('money').upsert(updates).execute();

    final error = response.error;
    if (error != null) {
      context.showErrorSnackBar(message: error.message);
    } else {
      context.showSnackBar(message: 'Data Saved');
      _amountController.clear();
      _noteController.clear();
      _dateController.clear();
      ref.refresh(moneyProvider.notifier).showMoney();
      context.go('/home');
    }
    setState(() {
      _isLoading = false;
    });
  }

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
    }
  }
}
