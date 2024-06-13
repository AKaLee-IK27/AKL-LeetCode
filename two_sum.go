package main

// twoSum is a function that takes in a slice of integers and a target integer and returns a slice of integers
func twoSum(nums []int, target int) []int {
	seen := make(map[int]int)
	for i, num := range nums {
		complement := target - num
		if val, ok := seen[complement]; ok {
			return []int{val, i}
		}
		seen[num] = i
	}
	return []int{}
}
