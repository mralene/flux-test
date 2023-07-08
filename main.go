package main

import (
	"fmt"
	"time"
)

const version int = 0

func main() {
	for {
		fmt.Printf("%s: Hello version %d\n", time.Now(), version)
		time.Sleep(2 * time.Second)
	}
}