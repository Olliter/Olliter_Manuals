![Olliter Logo](../resources/olliter-logo.png)

# OL-Master Software User Manual

![OL-Master screenshot](../resources/ol-master-screenshot.png)

## Contents of this manual

1. [Important user notice](#important-user-notice)
2. [Introduction](#introduction)
3. [System requirements](#system-requirements)
    * [Software requirements](#software-requirements)
      * [Operating system requirements](#operating-system-requirements)
      * [.NET 8](#net-8)
      * [Microsoft Visual C++ Redistributable](#microsoft-visual-c-redistributable)
    * [Hardware requirements](#hardware-requirements)
    * [Network requirements](#network-requirements)
4. [Installing OL-Master](#installing-ol-master)
    * [Automatic update check](#automatic-update-check)
    * [Configuring the firewall](#configuring-the-firewall)
5. [Usage of OL-Master](#usage-of-ol-master)
    * [Configuring OL-Master](#configuring-ol-master)
      * [Configuring the Olliter SDR address](#configuring-the-olliter-sdr-address)
      * [Configuring the operator settings](#configuring-the-operator-settings)
      * [Configuring the audio interface](#configuring-the-audio-interface)
      * [Configuring the receiver bandwidth](#configuring-the-receiver-bandwidth)
      * [Configuring the refresh rate](#configuring-the-refresh-rate)
    * [Starting the device](#starting-the-device)
    * [Controlling the transceiver](#controlling-the-transceiver)
      * [Selecting a different band](#selecting-a-different-band)
      * [Tuning a frequency](#tuning-a-frequency)
      * [Setting the visualization mode](#setting-the-visualization-mode)
      * [Interacting with the spectrum](#interacting-with-the-spectrum)
      * [Setting the receiver mode](#setting-the-receiver-mode)
      * [Adding additional receivers](#adding-additional-receivers)
      * [Adjusting the receivers volume](#adjusting-the-receivers-volume)
      * [DSP options](#dsp-options)
      * [Notch filter](#notch-filter)
    * [Firmware upgrade](#firmware-upgrade)
6. [Additional features](#additional-features)
    * [EIBI](#eibi)
    * [Clusters](#clusters)
    * [MQTT](#mqtt)
      * [Sample MQTT broker configuration](#sample-mqtt-broker-configuration)
      * [Telemetry data](#telemetry-data)
      * [Receiver control](#receiver-control)
        * [Controls examples](#controls-examples)
      * [Receivers commands](#receivers-commands)
        * [Commands examples](#commands-examples)
    * [UDP Stream](#udp-stream)
      * [Spectrum stream](#spectrum-stream)
        * [Spectrum reception example](#spectrum-reception-example)
      * [Audio stream](#audio-stream)
        * [Audio reception example](#audio-reception-example)
    * [Wavelog](#wavelog)
    * [N1MM](#n1mm)
7. [General recommendations](#general-recommendations)
8. [Frequently Asked Questions](#frequently-asked-questions)
9. [Troubleshooting](#troubleshooting)

## Important user notice

Before installing and using the OL-Master software, please read carefully:

* The [Software and Hardware License Agreements](../General/README.md) manual.
* Any manual regarding the specific transceiver or Olliter device you are about to use.

## Introduction

The main purpose of this guide is to help you configuring for the first time your Olliter OL-Master software and the basic operations.

This guide may not fully cover every feature available on the software and it will be updated frequently.

## System requirements

An SDR transceiver requires a control device to work, the hardware of the transceiver is used to convert analog RF signals to an IQ stream
that is sent to a software installed on the control device, where it is processed to extract an audio signal. When transmitting, the process is
reversed. The hardware and software need to work together to receive and transmit signals using the SDR transceiver.

Some I/O are available on-board to interface with external accessories like microphones, headphones and Morse key or paddle.

A simplified schematic representation of the SDR device is shown below.

![Schematic representation of the SDR functions](./resources/sdr-overview.png)

### Software requirements

As any SDR device, one of the main components is the PC that is used to control the device, the same PC is also used to decode and process the raw digital stream of data to usable audio stream. This decode process requires some minimum software and hardware requirements that should be met.

#### Operating system requirements

The OL-Master application was developed for Microsoft Windows 10 or later. Virtualization of such operating systems is also supported, if the host machine is capable enough.

> [!NOTE]
> Compatibility with Microsoft Windows 8.1 or previous versions of Microsoft Windows cannot be ensured due to lack of support for the latest .NET modules which was used to develop the application.

#### .NET 8

The operating system should be updated to the latest version and the .NET8 must be installed on the machine (latest update of the .NET8 can be downloaded from the Microsoft).

Depending on the system configuration, both the .NET8 SDK and .NET8 Runtime might be needed.

* .NET8 Link: <https://dotnet.microsoft.com/it-it/download/dotnet/thank-you/runtime-desktop-8.0.13-windows-x64-installer>
* .NET8 SDK Link: <https://dotnet.microsoft.com/it-it/download/dotnet/thank-you/sdk-8.0.406-windows-x64-installer>

#### Microsoft Visual C++ Redistributable

Some components of the software were written using highly optimized C++ code, this requires the latest version of the Microsoft Visual C++ Redistributable package to be installed and updated. The latest version of this package can be downloaded from the following URL:

* VC Redist: <https://learn.microsoft.com/it-it/cpp/windows/latest-supported-vc-redist?view=msvc-170>

As per the moment this manual was written, the latest available version is 14.40.33810.0.

### Hardware requirements

> [!WARNING]
> OL-Master requires AVX2 instruction set which was introduced with the Haswell series of Intel® CPUs (4<sup>th</sup> generation Intel® Core i series), any CPU older than Intel® Core i5 4<sup>th</sup> generation **cannot be used**. For optimal performances, we highly recommend an Intel® Core i5 7<sup>th</sup> generation or later.

Recommended hardware setup is an 7<sup>th</sup> generation Intel® Core i5 or later, with at least 16GB of RAM and 2GB of available storage space

> [!TIP]
> The disk and RAM usage may vary depending on additional features like recordings, cluster, EIBI, receiver bandwidth, number of receivers, and more.

Ethernet interface at 1Gbps on the control PC is mandatory if using more than one receiver window. Ethernet interface at 1Gbps is mandatory to configure the IP address of the device if connected directly to the control PC.

### Network requirements

> [!WARNING]
> The transceiver does not accept any link speed slower than 1Gbps. Network devices running at 10/100Mbps are not supported and will not work.

An ethernet interface capable of 1Gbps **is mandatory** for the transceiver to communicate with the control device (PC), a properly configured ethernet switch with interfaces at 1Gbps is suggested to be used in between the SDR and the PC.

Please note, the transceiver **does not support negotiating any speed lower than 1Gbps** with the control device or the switch/router that is plugged into.

An ethernet cable CAT5 or superior is highly recommended to interface the SDR to the switch/router and the PC.

To ensure best performances, use high quality switch or router and cables, make sure the whole network from the SDR to the master PC is capable of continuously communicate at 1Gbps.

An internet connection is not required if not using external services (like clusters or EIBI).

The network connection diagram is available in the transceiver manual.

## Installing OL-Master

After buying an Olliter SDR, you should receive the setup file for OL-Master, this is the main application that controls the SDR and must be installed on the PC.

The OL-Master software is distributed in two separate files, one for the first installation and one for the update. The two files are:

* `OL-Master_First_Setup_[version].exe`: This is the main setup file that must be used to install the software for the first time. It will install all the required components and dependencies in additions to the basic configuration files (like band plans, memories, default settings, etc).
  * This file can be used to install the software on a new PC or to reinstall the software on an existing PC.
* `OL-Master_Update_[version].exe`: This is the update file that can be used to update the software to the latest version. It will only update the existing installation and will not install any additional components or dependencies.
  * This file will not be available for the first installation, it will be available only after the first installation of the software.
  * This file will not overwrite the existing configuration files, so if you want to reset the configuration files to the default values, you need to delete the existing configuration files manually.

The first install or update procedures are almost identical, the only difference is that the first install will install all the required components and dependencies, while the update will only update the existing installation.

![Olliter setup file](./resources/15a34c54f5fdc8760e8ca4c1e772a68a2118758a.png)

Double click the executable to start the installer, administrative privileges are mandatory to install the software. Follow the on-screen instructions to proceed with the installation.

![Setup step 1](./resources/2c2db219748179cb712d2579dcff50c848ac0230.png)

Please accept all software license agreements to proceed with the installation.

![Setup step 2](./resources/5f228f61610cbb24ebdc9df574ec8a5385319e14.png)

Optionally, tick the option to create a desktop shortcut for the software, this will create a shortcut on the desktop to quickly access the software. A start menu shortcut will be created automatically.

![Setup step 3](./resources/d9fd212c0273127827a90e0fd34e3259949a8e96.png)

Once the setup is completed, users can choose to start the software immediately or to close the installer. The software can be started later from the start menu or from the desktop shortcut if created.

![Setup step 4](./resources/85191356186f190b5d11ff91f44fb13f69b8b502.png)

Setup or update procedure is now completed, before starting the software, please read carefully the next chapters.

### Automatic update check

There is currently no mechanism to automatically check for updates, the user must manually check for updates by visiting the [Olliter website](https://olliter.com) or by contacting the customer care team.

We are actively working to implement an automatic update check mechanism in the future. We apologize for the inconvenience and we appreciate your understanding.

### Configuring the firewall

> [!TIP]
> The firewall must be properly configured for the transceiver to work properly. If the firewall is not configured, the software won't be able to communicate with the OL-SDR device

Network communication to the device is performed using UDP protocol, a security system exception must be created for the software to work reliably.

Open the Windows firewall settings.

![Windows defender with advanced security](./resources/image22.png)

Select "Inbound connection rules" on the left menu.

![Inbound connection rules](./resources/image23.png)

Click on "New rule" on the right menu.

![New program rule](./resources/image24.png)

Select \"Program" and click "next".

![Create program rule](./resources/image25.png)

Click on "Browse" and navigate to `C:/Program
Files/Olliter/Ol-master.exe`

![Browse to OL-Master software](./resources/image26.png)

![Locate OL-Master software](./resources/image27.png)

Click on "Next"

![Proceed with selection](./resources/image28.png)

Select "Allow connections" and click "Next".

![Allow connection](./resources/image29.png)

Now select the kind of network that you are using, by default it should
be "Private", if you are using a different kind of network, please
select the option that best fits your configuration.

![Select kind of network](./resources/image30.png)

Insert any name you like and then click on "Complete".

![Complete rule creation](./resources/image31.png)

## Usage of OL-Master

### Configuring OL-Master

All the following settings are accessed using the Setup menu of the OL-Master application, in OL-Master, click the Setup menu, then follow the subsequent instructions.

![ OL-Master v1.0.6 (6 Jun 2024) RX1 CH1](./resources/image45.png)

Settings are persisted using the *Save* or the *Save and Close* buttons.

![Setup menu](./resources/image46.png)

#### Configuring the Olliter SDR address

In *General* \> *HW Config* make sure the "*Use static IP Address*" option is enabled, then insert the IP address of the Olliter SDR that was configured.

This address is 192.168.1.111 by default, if it was manually changed following the above procedure, please input the new IP address that was configured.

Once the IP address has been configured and selected (using the radio button on the right), click Save and close the dialog box.

![IP Address selection](./resources/image47.png)

#### Configuring the operator settings

In *General* \> *Options*, set the callsign and grid locator of the station.

![Grid square settings](./resources/image48.png)

#### Configuring the audio interface

If the user wants to enable the audio to be routed to the master PC, the following procedure is needed.

In *Audio* \> *Audio & Common VAC* configure the *Driver* to MME, select the desired *Input* and *Output* devices, then select "*Enable PC Speaker via common VAC*".

The onboard speakers can be deactivated using the "*Local speaker disable*" option.

![Audio interface settings](./resources/image49.png)

If a microphone is connected to the radio, the RX Only option can be checked to exclude audio transmission from the PC

![RX-only mode](./resources/da0f40fd02c37219095ae9af50a9567f14234e42.png)

#### Configuring the receiver bandwidth

The SDR is capable of receiving and displaying a wide area of the RF spectrum, the receiver span can be configured in *General* \> *HW Config* \> *Sample Rate*.

> [!WARNING]
> As the sample rate is increased, more system and network resources will be required by the software, please adjust the settings accordingly

The spectrum span that is rendered is roughly the 80% of the sample rate set in the settings menu, for example if 192000 samples per second are selected, the displayed spectrum will be roughly 180KHz.

> [!TIP]
> The recommended sample rate is 192000 samples per second.

![Receiver bandwidth setup](./resources/image52.png)

#### Configuring the refresh rate

The refresh rate of the receivers windows can be adjusted in *Display* \> *General*. The suggested value is between 10 and 20 frames per second.

> [!WARNING]
> Increasing the refresh rate can significantly impact the system load, if the system starts lagging or the UI starts behaving, reduce the "Main Display FPS" value

![Screen refresh rate](./resources/image53.png)

### Starting the device

Once the device settings were configured by the user, the device can now be started using the PWR button, the spectrum should animate, and audio will start.

![Starting the transceiver](./resources/image54.png)

### Controlling the transceiver

This chapter will cover the main settings of the OL-Master software, such as changing band, changing mode or interacting with the spectrum.

![Controlling the transceiver](./resources/4ea9dd2ed4ac68c4fed3fe430336de573f890ea6.png)

#### Selecting a different band

The transceiver can operate on all amateur bands of HF plus the 50MHz (6mt) band. The received band can be selected using the dedicated buttons.

![Bands selection](./resources/image56.png)

#### Tuning a frequency

There are multiple ways to tune the received frequency, the main ones are by panning the receiver spectrum or by selecting the frequency using the dedicated numeric input.

![Tuning a frequency](./resources/image57.png)

#### Setting the visualization mode

Different viewing modes can be selected for the receivers, each band will save the view setting that is restored every time the band is recalled.

![Setting visualization mode](./resources/image58.png)

#### Interacting with the spectrum

The receiver spectrum can be interacted using the spectrum controls, these allows zooming, panning and setting the tune step.

The spectrum can be rendered to display the average or the peak
mode.

![Changing spectrum mode](./resources/image59.png)

#### Setting the receiver mode

All main operative modes are supported by the transceiver, this can be selected using the dedicated buttons.

![Changing operating mode](./resources/image60.png)

Then, for each operating mode, the bandwidth can be adjusted as needed.

![Adjusting bandwidth](./resources/image61.png)

#### Adding additional receivers

RX1 is located in the main window of the software, additional receivers can be enabled using the RX2, RX3 and RX4 buttons in the main window.

> [!WARNING]
> Using additional receivers may significantly impact the system load, if the system starts to lag, reduce the number of receivers, or reduce the sample rate.

![Ol-Master software](./resources/image62.png)

![Multi-receivers layout](./resources/a49589dfb85f23b5e752a1e7b76355ed175bc99b.png)

#### Adjusting the receivers volume

The main and sub volumes, per each receiver can be configured using the
*Volume* controls group.

![Adjusting volumes](./resources/image64.png)

#### DSP options

Multiple software-based filters can be added to any receiver mode, these can significantly improve the reception of a given signal. Some filters are tuned to improve the voice quality, others to remove clicking, background noise or unwanted whistles. Filters can be enabled using the dedicated buttons.

![DSP Options](./resources/image65.png)

#### Notch filter

When receiving a station in voice modes, sometimes there are carriers interfering and creating unpleasant/disturbing hiss that can reduce the intelligibility of the received signal. OL-Master has functions to reduce/cancel this hiss with minimum impact on the received signal.

* **Automatic Mode:** To activate the automatic mode, click “ANF” (Automatic Notch Filter): very shortly the interfering signal will be reduced/cancelled.
* **Manual Mode:** If the interfering signal is intermittent or if it is always present, it is better to use the manual mode and define a permanent notch that will be stored in the configuration database and that will be activated every time OL-Master is started and the notch (NTCH) button activated.

There is no limit to the number of notches that can be defined.

Notches can be created in Panadapter, Spectrum and Panaspectrum display modes, but since the resolution of Spectrum and the spectrum sub-window of Panaspectrum display mode is higher, it is recommended to define the notch there because notches can be positioned with better precision. It is also recommended to activate the notch function by clicking the NOTCH button before creating notches: the effect of the notch will be audible in real time and immediately visible on the spectrum.

To define a notch: move the mouse pointer on the spectrum over the interfering signal and click the right button. A green vertical marker will appear. The first number is a progressive notch number, and the second number is the notch width. To change the notch width, move slightly the mouse to highlight the notch marker, then use the mouse wheel to adjust the width. The notch depth is automatically adjusted for best attenuation. If the notch (NTCH) button is active, the notch effect will immediately be audible and visible on the spectrum.

To disable a defined notch, highlight the marker by moving the mouse pointer over it and then right-click: the notch marker will become a dashed line.

To enable a defined notch, highlight the marker by moving the mouse pointer over it and then right-click: the marker will become a continuous line.

To delete a defined notch, highlight the marker by moving the mouse pointer over it and then double-right-click.

To delete ALL defined notches at once, press left-Alt on the keyboard and then right-click anywhere on the Panadapter, Spectrum, or Panaspectrum window and confirm the action by selecting Yes.

If the notch (NTCH) button is active, the Spectrum will immediately reflect the changes. No changes will be seen on the Panadapter since its data are collected before any function is applied. Spectrum data, however, are collected after all activated functions (e.g., filters, mode, noise reduction, notches) are applied.

To disable the manual notch mode, use the notch (NTCH) button to deactivate it. Please note that notches can be defined even if the notch (NTCH) button is not active, but the effect will not be visible or audible until the notch (NTCH) button is activated.

### Firmware upgrade

> [!WARNING]
> Although the Olliter SDR has a recovery mode that can be enabled in case of major firmware failures, the firmware upgrade is a delicate process that requires some attention. Please read this chapter carefully before starting the procedure.

Upgrade of the firmware is performed using the OL-Master application with a dedicated menu.

> [!WARNING]
> Make sure to close all background apps and to have a reliable power source for both the PC and the transceiver before attempting a firmware upgrade.

Extract the ZIP file containing the firmware anywhere on the local PC to
get the *.hex* file which contains the new firmware.

> [!WARNING]
> Extract the file on the local hard drive, do not use USB sticks, network drive or other unreliable locations that may create latency or issues.

Once the file is extracted you should see something like this:

![Extracted firmwares](./resources/2deb3313b882db5c6cb6f0fdd90a51e9d879e76f.png)

Make sure the transceiver is ON and reachable on the local network, then open OL-Master and select the *FW Maintenance* menu. The SDR should be detected automatically by the software.

![Firmware maintenance menu](./resources/1ee15ab771b6ea80b7b1ae20172ddb0194170c44.png)

Using the Select button, navigate to the .hex file that was just extracted and select it.

![Firmware selection](./resources/659766a21245bc4e387668b3b92ac18462d10dc8.png)

Once the file is selected, click the Program button to start the upgrade
procedure.

> [!WARNING]
> The upgrade procedure will take about a minute, please be patient.

![Firmware upgrade task](./resources/42461e5c391b24857e1eba8fd208316b921cd597.png)

At first, the software will erase the content of the FPGA, this is a monolithic task, so the software may look like it's frozen, please be patient and just wait for the process to complete. Once the erase task is completed, you should see the progress bar moving, and when it reaches 100%, the transceiver should be restarted automatically.

> [!WARNING]
> If the process hangs after some minutes, or if any error occurs, please contact our customer assistance to get further assistance.

Wait for the upgrade window to close automatically after a couple of seconds, then the process is complete, and the transceiver can be used as normal.

## Additional features

The OL-Master software can be configured to use external services like clusters or EIBI, these services might require an internet connection to work.

### EIBI

The EIBI service is a database of shortwave broadcast stations, it can be used to tune the receiver to a specific station, or to display the station name and frequency on the receiver window.

The list of broadcast is retrieved from the Olliter website and constantly updated. A set of filters can be used to sort or search the list of stations.

The broadcast stations that match the current frequency are highlighted in green.

When tuning a frequency on the VFO of any receiver, the matching broadcast station will be displayed in the spectrum window.

### Clusters

The cluster service is a database of amateur radio stations, it can be used to tune the receiver to a specific station, or to display the station name and frequency on the receiver window.

If the option is enabled in OL-Master settings, the list of DX stations will be listed in the spectrum window. Double clicking any callsign will tune the receiver to that station.

### CW Keyer

The CW Keyer feature allows you to send Morse code using a keyboard. The keyer can be configured to use different keying modes, speeds, and other parameters.

User can configure multiple messages to be sent by pressing keys from `F1` to `F12` or by combining the `SHIFT` key with these function keys, for a total of 24 usable messages.

The CW Keyer also supports special syntax for sending variable fields, such as:

* `#C` - The callsign of the DX station as specified in the dedicated field
* `#R` - A report as indicated in the dedicated field (like the signal report or a custom contest exchange like CQ zone, region, etc)
* `#N` - The name of the DX operator as specified in the dedicated field
* `#` - A progressive number that can be incremented from the CW Keyer window (like the progressive number in a CW contest)

> [!TIP]
> If you need to send arbitrary messages using the CW Keyer, you can use the [MQTT commands feature](#receivers-commands) as described below. This allows for more complex messaging scenarios.

### MQTT

The OL-Master software can be configured to send telemetry data to an MQTT broker, this data can be used to monitor the transceiver remotely, or to integrate the transceiver with other software.

> [!NOTE]
> This chapter is a work in progress

MQTT settings are available in the `Setup > COM > MQTT` menu of the OL-Master software.

> [!NOTE]
> The MQTT feature requires an external MQTT broker to be available. An example of a free MQTT broker is [Eclipse Mosquitto](https://mosquitto.org/).

#### Sample MQTT broker configuration

This is an example of the `mosquitto.conf` file configuration for the MQTT broker:

```conf
# MQTT protocol
listener 1883
protocol mqtt
# WebSocket protocol
listener 9001
protocol websockets
# Authentication should be disabled
# only on local protected networks
allow_anonymous true
```

#### Telemetry data

The telemetry data that is sent to the MQTT broker is a JSON object that contains the following fields:

The telemetry data is sent to the MQTT broker at each interval as configured in the Setup menu of the OL-Master software.

The telemetry topic is `receivers/get/[x]` where `[x]` is the receiver number, starting from 1.

The telemetry data is read-only and cannot be used to control the transceiver.

```json
{
  "software_id": "SomeRandomSoftwareId",
  "txpower": "0",
  "monitor_vol": "0",
  "band": "B10M",
  "swr": "1",
  "master_vol": "0.5",
  "temperature": "29.4",
  "current": "0.0",
  "receiver_a": {
    "active": "False",
    "frequency": "28.500000",
    "mode": "USB",
    "filterlow": "300",
    "filterhigh": "2700",
    "volume": "0",
    "squelch": "0",
    "mox": "False",
    "txvfo": "False",
    "signal": "-109.2"
  },
  "receiver_b": {
    "active": "False",
    "frequency": "28.550000",
    "mode": "USB",
    "filterlow": "300",
    "filterhigh": "2700",
    "volume": "0",
    "squelch": "0",
    "mox": "False",
    "txvfo": "False",
    "signal": "-109.2"
  }
}
```

#### Receiver control

The receiver commands are sent to the MQTT broker using the `receivers/set/[x]` topic, where `[x]` is the receiver number, starting from 1.

The JSON payload follows the same structure as the telemetry data, but some the fields are read-write and can be used to control the transceiver.

##### Controls examples

* Changing the band on the first receiver

Topic: `receivers/set/1`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "txpower": null,
  "monitor_vol": null,
  "band": "B30M",
  "swr": null,
  "master_vol": null,
  "receiver_a": null,
  "receiver_b": null
}
```

* Setting the frequency of the first receiver (main)

Topic: `receivers/set/1`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "txpower": null,
  "monitor_vol": null,
  "band": "B30M",
  "swr": null,
  "master_vol": null,
  "receiver_a": {
    "active": "True",
    "frequency": "10.100000",
    "mode": "LSB",
    "filterlow": "-2700",
    "filterhigh": "-300",
    "volume": "0",
    "squelch": "0",
    "mox": "False",
    "txvfo": "False",
    "signal": "-170.0"
  },
  "receiver_b": null
}
```

Frequency is in MHz.

#### Receivers commands

The following commands can be sent to the MQTT broker to send quick commands to the transceiver.

The topic is `receivers/command/[x]` where `[x]` is the receiver number, starting from 1.

Supported commands:

* `enable` - Enable or disable the receiver
* `volume` - Adjust the volume of the receiver
* `mox` - Toggle the MOX
* `frequency` - Adjust the frequency of the receiver
* `mode` - Adjust the mode of the receiver
* `keyer` - Control the transceiver CW keyer

Supported actions:

* `toggle` - Toggle the command
* `+` - Increase the value
* `-` - Decrease the value

The keyer, also supports the following actions:

* `sendmem` - Send a memory from the Keyer list
* `sendtext` - Send arbitrary text

> [!NOTE]
> The keyer feature was introduced with OL-Master version 1.1.0.5
>
> * Maximum length of the text is 100 characters
> * The CW Keyer window should be opened before sending commands to the keyer

The optional `subreceiver` field can be set to `true` to control the sub receiver.

The optional `value` field can be set to the value to increase or decrease. If this parameter is empty, the default value for such command will be used (e.g: the tuning step of the frequency).

##### Commands examples

* Toggling the first receiver

Topic: `receivers/command/1`

Payload:

```json
{
   "software_id": "AnyRandomSoftwareId",
    "command": "enable",
    "action": "toggle"
 }
```

* Increasing the volume of the second receiver

Topic: `receivers/command/2`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "volume",
  "subreceiver": "false",
  "action": "+",
  "value": "15" 
}
```

To increase the volume on the sub receiver, set the `subreceiver` field to `true`.

* Toggling MOX on the first receiver

Topic: `receivers/command/1`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "mox",
  "action": "toggle",
  "subreceiver": "false"
}
```

* Increasing the frequency of the first receiver (sub)

Topic: `receivers/command/1`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "frequency",
  "action": "+",
  "value": "0.1",
 "subreceiver": "true"
}
```

The frequency is in MHz, to decrease the frequency, set the `action` field to `-`.

* Changing the receiver mode of the third transceiver

> [!NOTE]
> Requires OL-Master version 1.0.12.13 or later

Topic: `receivers/command/3`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "mode",
  "action": "",
  "value": "USB",
  "subreceiver": ""
}
```

Allowed values:  "LSB", "USB", "DSB", "CWL", "CWU", "AM", "SAM", "SAML", "SAMU", "DIGL", "DIGU", "FM5", "FM2", "FT"

* Sending the message saved in the Keyer list at position 5

Topic: `receivers/command/3`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "keyer",
  "action": "sendmem",
  "value": "5",
  "subreceiver": "false"
}
```

* Sending arbitrary text using the keyer

Topic: `receivers/command/3`

Payload:

```json
{
  "software_id": "AnyRandomSoftwareId",
  "command": "keyer",
  "action": "sendtext",
  "value": "Hello World",
  "subreceiver": "false"
}
```

### UDP Stream

> [!NOTE]
> This chapter is a work in progress

The OL-Master software can be configured to send the audio and spectrum stream to a remote UDP server, this can be used to record the audio stream or to integrate the transceiver with other software.

> [!WARNING]
> The traffic is sent as unencrypted UDP packets, please make sure the network is secure before enabling this feature.

#### Spectrum stream

The spectrum stream is sent to the UDP server at each interval as configured in the Setup menu of the OL-Master software.

##### Spectrum reception example

The following code is an example of how to receive the spectrum stream using a javascript application to render the spectrum on a canvas.

```js
function initializePanadapterCanvas() {
    window.addEventListener('resize', adjustCanvasSize);
    adjustCanvasSize();
}

function adjustCanvasSize() {
    const canvas = document.getElementById('panadapterCanvas');
    if (canvas == null) {
        return;
    }
    const width = window.innerWidth; // Set width to the width of the viewport
    canvas.width = width; // Update the canvas width
    // Optionally, you can set height dynamically or keep it fixed
    canvas.height = 400; // Set height to a fixed value or adjust dynamically
}

window.drawPanadapter = (spectrumData, gridMin = -160, gridMax = 0) => {
    const canvas = document.getElementById('panadapterCanvas');
    if (canvas == null) {
        return;
    }
    const ctx = canvas.getContext('2d');
    const width = canvas.width;
    const height = canvas.height;
    const yRange = gridMax - gridMin;

    ctx.clearRect(0, 0, width, height); // Clear canvas

    const points = [];
    const slope = spectrumData.length / width; // Adjust this as needed

    for (let i = 0; i < width; i++) {
        // Ensure dataIndex is within bounds
        const dataIndex = Math.floor(i * slope);
        const data = spectrumData[Math.min(dataIndex, spectrumData.length - 1)] || 0;
        const yTemp = Math.ceil((gridMax - data) * height / yRange);
        points.push({ x: i, y: Math.min(yTemp, height) });
    }

    // Draw fill polygon if needed
    if (true) { // Adjust condition if necessary
        ctx.fillStyle = 'rgba(185, 152, 106, 0.5)'; // Adjust color and opacity
        points.push({ x: width, y: height }, { x: 0, y: height });
        ctx.beginPath();
        points.forEach((point, index) => {
            if (index === 0) {
                ctx.moveTo(point.x, point.y);
            } else {
                ctx.lineTo(point.x, point.y);
            }
        });
        ctx.closePath();
        ctx.fill();
    }

    // Draw the spectrum line
    ctx.strokeStyle = '#FFFFFF'; // Line color
    ctx.lineWidth = 2; // Line width
    ctx.beginPath();
    points.forEach((point, index) => {
        if (index === 0) {
            ctx.moveTo(point.x, point.y);
        } else {
            ctx.lineTo(point.x, point.y);
        }
    });
    ctx.stroke();

    ctx.strokeStyle = '#00000040';
    ctx.rect(width / 2, 0, 1, height);
    ctx.stroke();
};
```

#### Audio stream

The audio stream is sent to the UDP server as raw audio data, this can be used to record the audio stream or to integrate the transceiver with other software.

##### Audio reception example

The following Python code is an example of how to receive the audio stream using the `sounddevice` library.

```python
import socket
import pyaudio
import numpy as np

# Configurazione UDP
UDP_IP = "127.0.0.1"  # Ascolta su tutte le interfacce
UDP_PORT = 5000    # Porta UDP
BUFFER_SIZE = 1024  # Dimensione del pacchetto UDP

# Configurazione audio
FORMAT = pyaudio.paFloat32  # Supponendo che i dati siano float32
CHANNELS = 2                # Audio mono
RATE = 48000                # Frequenza di campionamento

# Configura PyAudio
p = pyaudio.PyAudio()
stream = p.open(format=FORMAT,
                channels=CHANNELS,
                rate=RATE,
                output=True)

# Configura socket UDP
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))
print(f"Ricezione audio su {UDP_IP}:{UDP_PORT}...")

try:
    while True:
        data, addr = sock.recvfrom(BUFFER_SIZE)
        
        # Decodifica i dati (supponendo double -> float)
        audio_data = np.frombuffer(data, dtype=np.float64).astype(np.float32)
        
        # Riproduci il buffer
        stream.write(audio_data.tobytes())
except KeyboardInterrupt:
    print("Terminato.")
finally:
    stream.stop_stream()
    stream.close()
    p.terminate()
    sock.close()

```

### Wavelog

![OL-Master and Wavelog](./resources/olmaster-wavelog.png)

[Wavelog](https://github.com/wavelog/wavelog) is an open-source, web-based and self-hosted logging software with extensive features to interface with external services like QSL management and live or contest logging.

> [!NOTE]
> This feature requires OL-Master version 1.1.0.6 or later

In the `Setup > COM > Wavelog section`, you can configure the integration with Wavelog, by providing the few required parameters.

* `Wavelog URL`: The base URL of the Wavelog instance (e.g., `https://wavelog.example.com/`).
  * No additional paths should be added, just the base URL of the Wavelog instance as indicated in the API key page of the Wavelog software
* `API Key`: An API key for the user account in Wavelog where radio interfaces should be synched.
  * The API key must be configured with both read and write access
* `Radio name`: An optional parameter used to distinguish between different radio interfaces.
  * If no radio name is provided, the default `Olliter SDR` name will be used

After configuring the Wavelog integration, you should click the `Apply + Test` button to verify the connection.

#### Radio interfaces

If this feature is enabled, the transceiver will periodically send updates to the Wavelog instance with the current state of the radio interfaces. This includes information such as frequency, mode, and other relevant parameters.

The update interval can be adjusted as needed.

To ensure proper functionality, you can access the Wavelog instance, look for the `Hardware interfaces` option in the user menu and make sure all four radio interfaces are listed and displaying correctly.

> [!TIP]
> Using a faster refresh rate (smaller interval) might overload the Wavelog instance, the recommended minimum value is 1000 milliseconds.

### N1MM

![OL-Master and N1MM integration](./resources/olmaster-n1mm.png)

OL-Master is capable of sending panadapter data to N1MM logging software. This allows for seamless integration between the two applications, enabling users to take full advantage of the features offered by both.

> [!NOTE]
> This feature requires OL-Master version 1.1.0.8 or later

#### OL-Master settings

Using the dedicated settings at `Setup > COM > N1MM` you can enable the spectrum forwarding to N1MM.

> [!TIP]
> To ensure proper visualization of the spectrum data, the zoom level in the receiver window of OL-Master should be set to minimum (no zoom).

There are also additional settings that can be customized:

* `Target address`: The IP address of the machine where N1MM is running. By default it is `127.0.0.1`.
* `Target port`: The port number on which N1MM is listening for incoming connections. By default it is `12060`.
* `Send interval`: The interval at which panadapter data is sent to N1MM. By default it is `333 ms`.
  * As per N1MM documentation, refresh should happen only 3-4 times per second.
* `Scaling factor`: A scaling factor to apply to the panadapter data before sending it to N1MM. By default it is `0.5`.
  * Increasing this value will make the spectrum "taller", while decreasing this value will make it "shorter".
* `Spectrum offset`: An offset to apply to the panadapter data before sending it to N1MM. By default it is `120`.
  * Increasing the value will shift the spectrum upwards, while decreasing the value will shift it downwards.

#### N1MM settings

In the N1MM waterfall window, click the "Settings" button (gear icon) to access the N1MM settings and then set:

* `Spectrum source`: Set this to `External (WB, Flex, etc)`.
* `Source Options`: Select which of the active receivers spectrum to display.
* `Binary bins`: Set this to the desired resolution of the spectrum.

## General recommendations

Please see: [General recommendations](./GeneralRecommendations.md)

## Frequently Asked Questions

Please see: [FAQ](./FrequentlyAskedQuestions.md)

## Troubleshooting

Please see: [Troubleshooting](./Troubleshooting.md)
