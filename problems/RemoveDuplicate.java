package problems;

import java.util.*;
import java.util.stream.Collectors;

public class RemoveDuplicate {

	// Function to remove duplicates from an ArrayList
	public static <T> List<T> removeDuplicates(List<T> list)
	{

		return	list.stream().distinct().collect(Collectors.toList());
	}

	// Driver code
	public static void main(String args[])
	{

		// Get the ArrayList with duplicate values
		List<Integer>
			list = new ArrayList<>(
				Arrays
					.asList(1, 10, 1, 2, 2, 3, 3, 10, 3, 4, 5, 5));

		// Print the Arraylist
		System.out.println("ArrayList with duplicates: "
						+ list);

		// Remove duplicates
		List<Integer>
			newList = removeDuplicates(list);

		// Print the ArrayList with duplicates removed
		System.out.println("ArrayList with duplicates removed: "
						+ newList);
	}
}
