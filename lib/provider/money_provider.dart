import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_journey/model/models/money_model.dart';
import 'package:money_journey/utils/constants.dart';

final moneyProvider =
    StateNotifierProvider<MoneyProvider, List<MoneyModel>>((ref) {
  return MoneyProvider();
});

class MoneyProvider extends StateNotifier<List<MoneyModel>> {
  MoneyProvider() : super([]) {
    showMoney();
  }

  Future<void> showMoney() async {
    final user = supabase.auth.currentUser;
    final response =
        await supabase.from('money').select().eq('belong', user!.id).execute();
    final error = response.error;
    if (error != null && response.status != 406) {
      state = [];
    }
    final data = response.data;
    state = (data as List).map((i) => MoneyModel.fromJson(i)).toList();
  }
}

final expenseValue = Provider<String>((ref) {
  final money = ref.watch(moneyProvider);
  int valueNumber = 0;
  if (money.isNotEmpty) {
    for (var valnum in money) {
      valueNumber += int.parse(valnum.amount!);
    }
    return '$valueNumber';
  } else {
    return '$valueNumber';
  }
});
