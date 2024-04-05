// Постройте очередь с приоритетом на основе кучи,
// используя массив, в котором не нужно изменять размеры.
// Назначьте ему фиксированный размер,
// возможно, 100 элементов, а затем отслеживайте те,
// с которыми работает программа.
// (Подсказка: используйте два массива (один для строковых значений,
// другой для соответствующих приоритетов),
// расположите элементы согласно их приоритетам.)

import 'dart:collection';

void main() {
  methodForQueue();
  priorityQueue.add(2);
  priorityQueue.add(6);
  priorityQueue.add(1);
  print(priorityQueue);
}

final priorityQueue = Queue<int>();

/// Обычная очередь
// Создаем пустую очередь
Queue<String> queue = Queue<String>();

methodForQueue() {
  // Добавляем элементы в очередь
  queue.add('A');
  queue.add('B');
  queue.add('C');

  // Получаем первый элемент очереди без его удаления
  print('Первый элемент: ${queue.first}');

  // Извлекаем первый элемент из очереди
  String removedItem = queue.removeFirst();
  print('Извлеченный элемент: $removedItem');

  // Выводим оставшиеся элементы в очереди
  print('Оставшиеся элементы:');
  for (var item in queue) {
    print(item);
  }
}
