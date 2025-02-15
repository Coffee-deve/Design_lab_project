The project focuses on the creation of the multimedia server, and also on the creation of the snake game.

## Snake game part:
Details about the snake game part.  
#### Pinout for LCD 2x16 display:  
VCC ---> 5 V     
GND ---> GND  
DATA PINS:  
SCL (signal clock) --->  B3  
SDA (signal data) ---> B4  
![image](https://github.com/user-attachments/assets/16ea5fed-5443-4020-8be4-29363488bbb1)
![image](https://github.com/user-attachments/assets/987f6ae3-b488-434f-9cc7-7ee6cfc1398e)


#### Pinout for buttons:
VCC ---> 5 V     
GND ---> GND
SIGNAL ---> digital pin B1 and B2
![image](https://github.com/user-attachments/assets/dad9824d-f2be-4465-b6cc-ae0f29340421)


## Media Server on Emulated Raspbian (macOS)

This repository demonstrates how to run a **Plex Media Server** inside an emulated Raspbian environment on macOS using Docker and QEMU. It includes scripts for setup, networking, and managing the Plex service.

### Table of Contents
1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Prerequisites](#prerequisites)
4. [Installation & Setup](#installation--setup)
5. [Scripts Explanation](#scripts-explanation)
6. [Troubleshooting](#troubleshooting)

---

### Overview

- **Goal**: Emulate a Raspberry Pi 3 (Raspbian) environment on macOS and run a Plex Media Server.
- **Emulation**: Utilizes QEMU for ARM to simulate Raspberry Pi hardware.
- **Docker**: Encapsulates the emulated environment, so you don’t need to install QEMU or additional dependencies directly on your host.

After following this guide, you’ll have a Docker image that boots an emulated Raspbian kernel, installs Plex, and makes it accessible from your macOS host.

---

### Project Structure

- **media_server/**  
  Main project folder containing all necessary files.

- **scripts/**
    - **media_service.sh**: Manages the Media Server (start, stop, restart).
    - **network_conf.sh**: Configures network settings for the emulation.
    - **setup.sh**: Installs media server and other dependencies in the emulated environment.

- **bcm2710-rpi-3-b-plus.dtb**  
  Device Tree Blob for Raspberry Pi 3 B+.

- **kernel8.img**  
  64-bit kernel image for Raspberry Pi 3 emulation.

- **Dockerfile**  
  Defines the Docker build process, including QEMU setup, copying kernel files, configuring Raspbian, and installing Plex.

---

### Prerequisites

1. **macOS** (Intel or Apple Silicon) with:
    - [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running.
    - (Optional) [Homebrew](https://brew.sh/) if you want QEMU or other tools installed natively for testing.

2. **Git** (to clone the repository).

3. **Sufficient disk space** for the emulated image and any media files.

---

### Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Coffee-deve/Design_lab_project.git
   cd media_server
    ```
   
2. **Build the Docker Image**
    ```bash
    docker build -t media_server .
    ```
   
3. **Run the Docker Container**
    ```bash
    docker run -it --rm --privileged -p 32400:32400 media_server
    ```
   
4. **Access Media Server**
    - Open a browser and go to [http://localhost:32400/web](http://localhost:32400/web).
    - Follow the on-screen instructions to set up media server.

---

### Scripts Explanation

1. `media_service.sh`
   Purpose: Start, stop, or restart Plex inside the emulated environment.

Usage:
   ```bash
   ./media_service.sh start
   ./media_service.sh stop
   ./media_service.sh restart
   ```
   
2. `network_conf.sh`
   Purpose: Configure network settings (port forwarding, bridging, etc.) for the emulated environment.
   
Usage:
   ```bash
   ./network_conf.sh
   ```
   Adjust this script as needed to match your network requirements.

3. `setup.sh`
   Purpose: Install Plex, dependencies, and other tools in the emulated Raspbian environment.
   
Usage:
   ```bash
   ./setup.sh
   ```
   
   Typically runs during Docker build or at first container startup.

### Troubleshooting

#### Cannot Access Plex UI

Ensure Docker is forwarding port 32400.
Check if Plex is running inside the container:

```bash
docker exec -it plex_rpi ps aux | grep plex
```

#### Slow Performance

Emulation is slower than native. Increase CPU/RAM for Docker if possible.
Use “Direct Play” instead of transcoding if you can.

#### Permission Issues

If mounting host directories, ensure the container user has proper read permissions.
Use change ownership or permissions as needed.

```bash
docker exec -it plex_rpi chown -R plex:plex /path/to/media
```

#### Port Conflicts

If port 32400 is in use, change the host port (e.g., -p 8080:32400) and then access Plex at http://localhost:8080/web.

## Final project:
Connections of both parts.
