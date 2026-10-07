#!/bin/bash
cd "$(dirname "$0")"
rm -rf .git
git init
git config user.name "Garcia Gutierrez Luz"
git config user.email "luz@example.com"
git add .
git commit -m "feat: linea base inicial"
git checkout -b feature/funcionalidad
git add src/main/java/com/t2/Util.java
git commit -m "feat: agrega Util"
git checkout main
git merge feature/funcionalidad -m "merge feature"
git tag v1.0
git log --oneline --graph --all
