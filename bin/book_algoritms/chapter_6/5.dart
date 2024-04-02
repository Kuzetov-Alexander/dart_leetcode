// ignore_for_file: file_names

void main() {
  List<int> sortedArray = sortBubble();
  print(sortedArray);
}

late bool isSwapped;
List<int> sortBubble() {
  List<int> arr = [5, 1, 3, 6, 5, 8, 7, 12, 9, 20, 14, 2];
  do {
    isSwapped = false;
    _sortBubble(arr, forward: true);
    if (!isSwapped) break;
    isSwapped = false;
    _sortBubble(arr, forward: false);
  } while (isSwapped);

  return arr;
}

void _sortBubble(List<int> arr, {required bool forward}) {
  int start = forward ? 0 : arr.length - 1;
  int end = forward ? arr.length - 1 : 0;
  int increment = forward ? 1 : -1;

  for (int i = start; forward ? (i < end) : (i > end); i += increment) {
    final currentElement = arr[i];
    final nextElement = arr[i + increment];
    if ((forward && currentElement > nextElement) ||
        (!forward && currentElement < nextElement)) {
      arr[i] = nextElement;
      arr[i + increment] = currentElement;
      isSwapped = true;
    }
  }
}
