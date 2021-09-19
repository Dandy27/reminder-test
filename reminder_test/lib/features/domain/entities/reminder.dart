import 'package:equatable/equatable.dart';

class Reminder extends Equatable{
  final int id;
  final String title;
  final String descriptin;

  const Reminder({
    required this.id,
    required this.title,
    required this.descriptin,
  });

  @override
  
  List<Object?> get props => [id, title, descriptin];
}
