import 'package:data_structures/stack.dart';

void main() {
  final stack = Stack<int>();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  print(stack);
  final element = stack.pop();
  print('Popped $element');

  const list = ['S', 'M', 'O', 'K', 'E'];

  final smokeStack = Stack.of(list);
  print(smokeStack);
  print(smokeStack.pop());

  printInReverse(['d', 'r', 'a', 'w', 'e', 'r']);
  print(checkParantheses('(sdasa)sad()'));
}

void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

bool checkParantheses(String text) {
  var stack = Stack<int>();

  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
