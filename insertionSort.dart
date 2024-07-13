void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int curr = arr[i];
    int prev = i - 1;
    while (prev >= 0 && arr[prev] > curr) {
      arr[prev + 1] = arr[prev];
      prev--;
    }
    arr[prev + 1] = curr;
  }
}

void printArr(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  }
}

void main() {
  List<int> arr = [5, 4, 1, 3, 2];
  insertionSort(arr);
  printArr(arr);
}
