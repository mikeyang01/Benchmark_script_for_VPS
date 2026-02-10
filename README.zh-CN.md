# VPS 基准测试工具集合

[English](README.md) | 简体中文

本文档汇总了常用的 VPS 性能测试脚本，涵盖 CPU、磁盘、网络、压力测试等内容。适用于 Ubuntu / Debian / CentOS 等 Linux 系统。

# VPS CPU 跑分脚本
自动执行基准测试并在线展示详细结果。  
由 Geekbench 提供支持。<br>
适用于 Ubuntu、CentOS、Debian 等 Linux 系统。<br>
非常适合测试 VPS、云服务器等场景。
## 如何运行
在命令行中粘贴以下命令并回车：
```
curl -L -o gk5.sh https://raw.githubusercontent.com/mikeyang01/benchmark-script/master/geekbench5.sh && bash gk5.sh
```
## 测试耗时多久？
取决于 CPU 性能，通常约 1~5 分钟。

## 示例结果
<img src="https://github.com/mikeyang01/benchmark-script/blob/master/gb5-sample.jpg" width="300">

## Geekbench 5 测试项目  
单核与多核：AES-XTS、文本压缩、图像压缩、导航、HTML5、SQLite、PDF 渲染、文本渲染、机器学习

# VPS 网络测速
原始脚本来自 https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py<br>
## 如何运行
在命令行中粘贴以下命令并回车：
```
curl -L https://rebrand.ly/speed-cli | python3 -
```
输出示例：
```
Retrieving speedtest.net configuration...
Retrieving speedtest.net server list...
Testing from Comcast Cable (x.x.x.x)...
Selecting best server based on ping...
Hosted by FiberCloud, Inc (Seattle, WA) [12.03 km]: 44.028 ms
Testing download speed........................................
Download: 32.29 Mbit/s
Testing upload speed..........................................
Upload: 5.18 Mbit/s
```

# 🧰 其他常见基准测试与诊断工具

---

## 🔧 通用基准测试脚本

### **LemonBench** – 综合型基准测试脚本  
支持 CPU、内存、磁盘、网络与系统信息检测。

```bash
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
```

---

### **SuperBench** – 面向中国网络优化  
适合测试中国大陆方向测速、磁盘 I/O 与基础性能。

```bash
bash <(curl -Lso- https://git.io/superbench)
```

---

### **YABS (Yet Another Benchmark Script)** – 极简风格  
可快速测试磁盘 I/O、Geekbench 分数与网络带宽。

```bash
curl -sL yabs.sh | bash
```

---

## 🌐 网络性能工具

### **Speedtest CLI** – 官方命令行工具  
全球通用测速工具，提供上传、下载与延迟统计。

```bash
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
```

---

## 🧠 CPU / 内存压力测试工具

### **stress-ng** – CPU、内存与 I/O 压测工具  
可配置压测类型与持续时间，用于稳定性测试。

```bash
sudo apt install -y stress-ng
stress-ng --cpu 4 --io 2 --vm 2 --timeout 60s
```

---

## 💽 磁盘 I/O 测试工具

### **fio** – 全功能磁盘基准测试工具  
支持读写模式、I/O 深度、并发数等高级参数。

```bash
sudo apt install -y fio
fio --name=test --size=1G --filename=testfile --bs=4k --rw=randrw --ioengine=libaio --iodepth=64 --runtime=60 --numjobs=4 --group_reporting
```

---

## 🛰️ 可视化路由追踪工具

### **BestTrace** – 可视化 traceroute 工具  
支持 IP 地理定位，适合分析国际路由路径。

```bash
wget https://cdn.ipip.net/17mon/besttrace4linux.zip
unzip besttrace4linux.zip
chmod +x besttrace
./besttrace -q 1 <ip-address>
```

---

## 🎮 GPU 压力测试（网页版）

基于 WebGL 的网页 GPU 压测工具，无需安装。  
在浏览器中打开：[https://cznull.github.io/vsbm](https://cznull.github.io/vsbm)

<img src="https://raw.githubusercontent.com/mikeyang01/benchmark-script/master/gpu_stress_test.jpeg" width="300">
