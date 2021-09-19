import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reminder_test/features/domain/entities/reminder.dart';
import 'package:reminder_test/features/domain/repositories/reminder_repository.dart';
import 'package:reminder_test/features/domain/usecase/get_reminder.dart';

class MockReminderRepository extends Mock implements ReminderRepository {}

void main() {
  late GetReminder usecase;
  late MockReminderRepository repository;

  setUp(() async{
    repository = MockReminderRepository();
    usecase = GetReminder(repository);
  });

  const tReminder = Reminder(id: 1, title: 'Domingo', descriptin: 'férias');

  test('deve retornar a entidade reminder', () async {
    //arrange
    when(() => repository.getReminder(1))
        .thenAnswer((_) async => tReminder);
    //act
    final result = await usecase(1);
    //assert
    expect(result, tReminder);
  });
}
