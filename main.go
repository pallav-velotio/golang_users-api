package main

func main() {
	a := App{}
	a.Initialize(
		"postgres",
		"password",
		"users")

	a.Run(":8010")
}
