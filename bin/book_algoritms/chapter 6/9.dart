/// Пирамидальная сортировка
///
///
void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];

  heapSort(arr);

  print("Отсортированный массив: $arr");
}

void heapSort(List<int> arr) {
  int n = arr.length;

  // Построение кучи (Heapify) (перегруппировка массива)
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // Один за другим извлекаем элементы из кучи
  for (int i = n - 1; i > 0; i--) {
    // Перемещаем текущий корень в конец массива
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // Вызываем heapify на уменьшенной куче
    heapify(arr, i, 0);
  }
}

// Функция для перегруппировки поддерева с корневым узлом i, который является индексом в arr. n - размер кучи
void heapify(List<int> arr, int n, int i) {
  int largest = i; // Инициализация наибольшего элемента как корня
  int left = 2 * i + 1; // Левый потомок узла i
  int right = 2 * i + 2; // Правый потомок узла i

  // Если левый потомок больше корня
  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  // Если правый потомок больше, чем самый большой сейчас
  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  // Если самый большой элемент не корень
  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    // Применяем heapify к поддереву
    heapify(arr, n, largest);
  }
}
