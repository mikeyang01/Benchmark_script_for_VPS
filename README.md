# VPS Benchmark Tool Collection

This document summarizes commonly used VPS performance testing scripts, covering CPU, disk, network, stress testing, and more. Works on Linux systems like Ubuntu/Debian/CentOS.

# CPU Benchmark script for VPS
Execute benchmark testing automatically and show detailed results online. 
Powered by Geekbench.<br>
Works on Linux like Ubuntu, centOS, debian and etc.<br>
Best for testing VPS, cloud server...
## How to run
In the command line, paste the following and enter.
```
curl -L -o gk5.sh https://rebrand.ly/gk5 && bash gk5.sh
```
## How long will the test cost?
Depends on CPU, around 1~5 minutes

## Sample results
<img src="https://github.com/mikeyang01/benchmark-script/blob/master/gb5-sample.jpg" width="300">

## Geekbench 5 Test Items  
Single-Core & Multi-Core: AES-XTS, Text Compression, Image Compression, Navigation, HTML5, SQLite, PDF Rendering, Text Rendering, Machine Learning

# Network Speedtest for VPS
Originally from https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py<br>
## How to run
In the command line, paste the following and enter.
```
curl -L https://rebrand.ly/speed-cli | python3 -
```
Output:
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
# 🧰 Other Famous Benchmark & Testing Tools

---

## 🔧 General Benchmark Scripts

### **LemonBench** – Comprehensive Benchmark Script  
Supports CPU, memory, disk, network, and system information testing.

```bash
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
```

---

### **SuperBench** – Optimized for China Network  
Suitable for testing speed from mainland China, disk I/O, and basic performance.

```bash
bash <(curl -Lso- https://git.io/superbench)
```

---

### **YABS (Yet Another Benchmark Script)** – Minimalist Style  
Quickly tests disk I/O, Geekbench scores, and network bandwidth.

```bash
curl -sL yabs.sh | bash
```

---

## 🌐 Network Performance Tools

### **Speedtest CLI** – Official CLI Tool  
Global speed test tool providing upload, download, and latency stats.

```bash
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
```
---

## 🧠 CPU / Memory Stress Tools

### **stress-ng** – CPU, Memory, and I/O Stress Test  
Allows configurable stress types and duration for stability testing.

```bash
sudo apt install -y stress-ng
stress-ng --cpu 4 --io 2 --vm 2 --timeout 60s
```

---

## 💽 Disk I/O Test Tools

### **fio** – Comprehensive Disk Benchmark Tool  
Supports read/write modes, I/O depth, concurrency, and more.

```bash
sudo apt install -y fio
fio --name=test --size=1G --filename=testfile --bs=4k --rw=randrw --ioengine=libaio --iodepth=64 --runtime=60 --numjobs=4 --group_reporting
```

---

## 🛰️ Visual Traceroute Tools

### **BestTrace** – Visual Traceroute Utility  
Supports IP geolocation and is ideal for analyzing international routing paths.

```bash
wget https://cdn.ipip.net/17mon/besttrace4linux.zip
unzip besttrace4linux.zip
chmod +x besttrace
./besttrace -q 1 <ip-address>
```

---

## 🎮 GPU Stress Test (Web-based)

Web-based GPU stress test using WebGL, no installation needed.  
Open your browser and visit: [https://cznull.github.io/vsbm](https://cznull.github.io/vsbm)

<img src="https://raw.githubusercontent.com/mikeyang01/benchmark-script/master/gpu_stress_test.jpeg" width="300">
