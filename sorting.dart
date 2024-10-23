//The function bubbleSort takes parameter of type list integer called array and loop through each element in the list and sorts the list using the Bubble Sort algorithm.
bubbleSort(List<int> array) { 
  int lengthOfArray = array.length; //Defined variable to store the length of array.
  //Outer loop iterates over the aray from first to the last element.
  for (int i = 0; i < lengthOfArray - 1; i++) { 
    //Inner loop compare the adjacent elements and swap them if needed. 
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      //If the cuurent element is greater than the next element swap them
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j]; //Define variable to store the current element
        //Perform the swap
        array[j] = array[j + 1]; 
        array[j + 1] = temp;
      }
    }
  }
  return (array); //Return the sorted array after all iteration.
}

void main() {
  List<int> array = [6, 4, 0, 1, 2, 5, 9, 8, 3, 10, 7]; //Defined variable that store a list  of integers that is unsorted
  List<int> sortedarray = bubbleSort(array); //Call the bubbleSort function to sort the array and store the result.
  print(sortedarray); // Output of the sorted array
}