package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	// 获取目标路径（默认为当前目录）
	targetPath := "."
	if len(os.Args) > 1 {
		targetPath = os.Args[1]
	}

	// 创建子目录
	subDirs := []string{"code", "file"}
	for _, dir := range subDirs {
		fullPath := filepath.Join(targetPath, dir)
		if err := os.MkdirAll(fullPath, 0755); err != nil {
			fmt.Fprintf(os.Stderr, "创建目录失败: %v\n", err)
			os.Exit(1)
		}
	}

	fmt.Printf("成功创建工程目录结构: %s\n", filepath.Join(targetPath, "{code,file}"))
}
