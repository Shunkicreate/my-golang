package main

import (
    "fmt"
    "log"
    "net/http"
    "os"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hi 👋, I'm Shunki")
    })

    port := os.Getenv("PORT")
    if port == "" {
        port = "8080" // デフォルトポート
    }

    log.Printf("Starting server on :%s", port)
    if err := http.ListenAndServe(":"+port, nil); err != nil {
        log.Fatal(err)
    }
}
