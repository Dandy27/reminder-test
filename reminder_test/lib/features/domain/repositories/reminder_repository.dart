import 'package:reminder_test/features/domain/entities/reminder.dart';

abstract class ReminderRepository {
  Future<Reminder> getReminder(int id);
}
