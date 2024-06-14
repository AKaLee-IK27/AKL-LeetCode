package main

import "sort"

func minIncrementForUnique(nums []int) int {
	sort.Ints(nums)

	moves := 0

	for i := 1; i < len(nums); i++ {
		if nums[i] <= nums[i-1] {
			moves += nums[i-1] - nums[i] + 1
			nums[i] = nums[i-1] + 1
		}
	}

	return moves
}
