package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "env-api Getenv(\"number\"): "+os.Getenv("number"))
	log.Println("access to env-api")
}

func main() {
	http.HandleFunc("/", handler)
	log.Println("env-api is running")
	http.ListenAndServe(":80", nil)
}
