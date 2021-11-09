#!/bin/zsh
# This script will generate simple golang project struct

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

mkdir build pkg config test docs vendor
mkdir -p internal/app/$BASENAME
mkdir -p cmd/$BASENAME

cat > .gitignore << EOM
# Binaries for programs and plugins
*.exe
*.exe~
*.dll
*.so
*.dylib

# Test binary, built with `go test -c`
*.test

# Dependency directories (remove the comment below to include it)
vendor/
EOM

cat > cmd/$BASENAME/main.go << EOM
package main

import (
  "fmt"
)

func main() {
  fmt.Println("Wake up, Neo...")
}
EOM

go mod init $BASENAME