package main

func main() {
	a := App{}
	a.Initialize(
		"postgres",
		"postgres",
		"users")

	a.Run(":8010")
}
