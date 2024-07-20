// Mixins are relationships with set of actions
mixin Child {
  Parent? _parent;
  Parent? get parent => _parent;

  set parent(Parent? parent) {
    _parent = parent;
    parent?.children.add(this);
  }
}

mixin Parent {
  List<Object> children = [];
}

mixin ToStringable{
  @override
  String toString() {
    return '$runtimeType';
  }
}

// classes are entities that have multiple relationship behaviors
class Task with Child, Parent, ToStringable {
  String name;

  Task(this.name);
}

void main(){
  var task1 = Task('Task 1');
  var task2 = Task('Task 2');
  var task3 = Task('Task 3');

  task1.parent = task2;
  task2.parent = task3;

  print(task1.parent);
  print(task2.children);
  print(task3.children);
}