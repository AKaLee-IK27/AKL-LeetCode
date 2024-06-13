package main

import (
	"fmt"
	"strings"
)

func main() {
	arr := []int{1, 2, 3, 4, 5}
	result := mapAny(arr, func(v int) int {
		return v * 2
	})
	fmt.Println(result)

	stringArr := []string{"apple", "bannaa", "coconut", "durian", "elderberry"}
	stringResult := mapAny(stringArr, func(v string) string {
		return strings.ToUpper(v)
	})
	fmt.Println(strings.Join(stringResult, ", "))
}
