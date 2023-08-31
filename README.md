# Network Speedtest for VPS
Originally from https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py<br>
How to run
In the command line, paste the following and enter.
```
curl -L https://rebrand.ly/speed-cli | python -
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
![alt text](https://github.com/mikeyang01/benchmark-script/blob/master/gb5-sample.jpg)
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
  <br> Clang
  <br> Camera
  <br> N-Body Physics
  <br> Rigid Body Physics
  <br> Gaussian Blur
  <br> Face Detection
  <br> Horizon Detection
  <br> Image Inpainting
  <br> HDR
  <br> Ray Tracing
  <br> Structure from Motion
  <br> Speech Recognition
  <br> Machine Learning
