// ignore_for_file: file_names

void main() {
  List<int> sortedArray = sortBySelection();
  print(sortedArray);
}

List<int> sortBySelection() {
  List<int> arr = [5, 1, 3, 6, 5, 8, 7, 12, 9, 20, 14, 2];

  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int biggerEl = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = biggerEl;
    }
  }
  return arr;
}
