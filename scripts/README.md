# 一些脚本

## jversion.ps1

Windows 下使用 Powershell 多 Java 版本切换脚本。
将多个jdk按相同明明方式存储到指定位置，脚本中是将其存储到 "D:\.sdks\java\jdk-<version>" 目录下。将本脚本放到路径加入到 path，执行 jversion <version> 可以切换版本。

```ps1
> jversion 11
Java 11 activated.
java version "11.0.16" 2022-07-19 LTS
Java(TM) SE Runtime Environment 18.9 (build 11.0.16+11-LTS-199)
Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.16+11-LTS-199, mixed mode)
```