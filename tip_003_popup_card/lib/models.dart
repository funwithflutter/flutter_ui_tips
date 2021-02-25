import 'package:meta/meta.dart';

/// {@template todo}
/// Model for a todo. Can contain an optional list of [items] for
/// additional sub-todos.
/// {@endtemplate}
class Todo {
  /// {@macro todo}
  const Todo({
    @required this.id,
    @required this.description,
    this.items,
  });

  /// The id of this todo.
  final String id;

  /// The description of this todo.
  final String description;

  /// A list of [Item]s for sub-todos.
  final List<Item> items;
}

/// {@template item}
/// An individual item model, used within a [Todo].
/// {@endtemplate}
class Item {
  /// {@macro item}
  Item({
    @required this.id,
    this.description = '',
    this.completed = false,
  });

  /// The id of this item.
  final String id;

  /// Description of this item.
  final String description;

  /// Indicates if this item has been completed or not.
  bool completed;
}
