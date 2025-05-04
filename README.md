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

## Geekbench5 Test items
Single-Core & Multi-Core
  <br> AES-XTS
  <br> Text Compression
  <br> Image Compression
  <br> Navigation
  <br> HTML5
  <br> SQLite
  <br> PDF Rendering
  <br> Text Rendering
  <br> Machine Learning

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
Testing upload speed..................................................
Upload: 5.18 Mbit/s
```
# Other Famous Benchmark & Testing tools
## ✅ LemonBench - Comprehensive Benchmark

```bash
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
```

---

## ✅ SuperBench - China Network & Speed Test

```bash
bash <(curl -Lso- https://git.io/superbench)
```

---

## ✅ YABS (Yet Another Benchmark Script)

```bash
curl -sL yabs.sh | bash
```

---

## ✅ Speedtest (Official CLI)

```bash
curl -s https://install.speedtest.net/app/cli/install.sh | bash
speedtest
```

---

## ✅ iperf3 - Network Throughput Test

```bash
# On the server side:
iperf3 -s

# On the client side:
iperf3 -c <server-ip>
```

---

## ✅ stress-ng - CPU, Memory, I/O Stress Test

```bash
sudo apt install -y stress-ng
stress-ng --cpu 4 --io 2 --vm 2 --timeout 60s
```

---

## ✅ fio - Disk I/O Performance Test

```bash
sudo apt install -y fio
fio --name=test --size=1G --filename=testfile --bs=4k --rw=randrw --ioengine=libaio --iodepth=64 --runtime=60 --numjobs=4 --group_reporting
```

---

## ✅ BestTrace - Traceroute Visualization

```bash
wget https://cdn.ipip.net/17mon/besttrace4linux.zip
unzip besttrace4linux.zip
chmod +x besttrace
./besttrace -q 1 <ip-address>
```

## ✅ GPU Stress Test (Web-based)

Open browser and visit: [https://cznull.github.io/vsbm](https://cznull.github.io/vsbm)

<img src="https://raw.githubusercontent.com/mikeyang01/benchmark-script/master/gpu_stress_test.jpeg" width="300">

