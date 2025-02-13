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


## Server part:

Install Raspbian - installing the Raspbian OS on the Raspberry Pi. Download the latest version of Raspbian and write it to the SD card using imaging software.

Initial Configuration - Bootting the Raspberry Pi with the newly installed Raspbian, completing the initial setup process, including configuring network settings to ensure the Pi is connected to the internet.

Installing Media Server Software Plex Media Server

Install Plex – installation for the Plex Media Server from the command line:
```
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
echo "deb https://downloads.plex.tv/repo/deb public main" | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
```
```
sudo apt update
sudo apt install plexmediaserver
```

Configure Plex - Accessing the Plex server interface via http://{raspberry_pi_IP_address}:32400/web on any browser within the network to set up libraries by pointing Plex to the directories where the media files are stored on the external drive.

Organizing Media Files
Connecting the external hard drive or USB drive to the Raspberry Pi and format it (NTFS or exFAT). Creating directories for different media types like Movies, TV Shows, Music, etc. Transferring the media files to the respective directories on the external storage.



## Final project:
Connections of both parts.
