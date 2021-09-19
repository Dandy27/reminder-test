import 'package:reminder_test/features/domain/entities/reminder.dart';
import 'package:reminder_test/features/domain/repositories/reminder_repository.dart';

class GetReminder {
  final ReminderRepository repository;

  GetReminder(this.repository);
  Future<Reminder> call(int id) {
    return repository.getReminder(1);
  }
}
