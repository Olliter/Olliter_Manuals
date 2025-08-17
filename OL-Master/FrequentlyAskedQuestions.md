# Frequentkl Asked Questions

![Olliter logo](../resources/olliter-logo.png)

This page contains the answers to the most frequently asked questions about the OL-Master software.

## Can I use Tethis as software to manage Olliter SDR?

No, Olliter SDR has a proprietary communication protocol that is not compatible with other software such as Tethis, PowerSDR, or SDR Console. Some DLLs might be available in future releases to allow the use of third-party software.

## Can I interface Olliter SDR with my linear amplifier?

Yes, by adjusting the output power and (optionally) connecting the PTT and band change signals, it is possible to interface most of the amplifiers available on the market.

Additionally, using a properly sized attenuator, a feedback of the forward power can be passed to the PureSignal input of the transceiver to allow the use of the PureSignal algorithm and reduce the distortion of the transmitted signal.

## How can I connect the "CW Skimmer" decoding software to OL-Master?

First of all, you need to download and install on your computer a software that creates one or more "Virtual Coms", then you will need to download and install on your computer a software that creates a virtual Audio routing (VAC = Virtual Audio Cable). Once this is done, you will start the OL-Master software and, entering the Setup panel, you will assign one of the VACs to one of the virtual cables created previously. You can repeat the operation for all four VACs present under the Audio panel within the Setup panel. Remember to check the box to enable the VAC (e.g. VAC RX1 enable) in addition to the Direct I/Q enable box: Output to VAC. Always under Setup, within the COM panel, you will enable one of the CAT ports by assigning it to one of the virtual ports created previously. Once this is done, you will download the OL_SDR parameter definition file from our website and copy it to the CW Skimmer folder. At this point, you can start CW skimmer and configure it to interface with the VAC and VCOM ports created previously.

All this procedure is explained in detail on our youtube channel at the following link: [YouTube CW-Skimmer with OL-Master](https://www.youtube.com/watch?v=JfEGwmIWuCU&pp=ygUSb2xsaXRlciBjdyBza2ltbWVy)

## How can I transmit in Split with OL-Master?

Just activate the RIT or XIT. Through the Xit, the transmission frequency will be moved by +xxxx Hz compared to the reception frequency indicated on the frequency meter display. During transmission, it will be noticed that the frequency is shifted compared to the reception frequency indicated on the frequency meter by +xxxx Hz. It is important to remember to activate the functionality by pressing the XIT button, whose writing will turn red. The same effect can also be obtained with the Rit. The only difference is that the Rit moves the reception frequency by +xxxx Hz while the transmission frequency remains the one set and displayed on the frequency meter.

You can also use the sub receiver feature to transmit in split. The sub receiver is a second receiver that can be used to listen to a different frequency than the main receiver. The sub receiver can be activated by pressing the SUB button. The sub receiver can be tuned independently of the main receiver. For example:

* The sub receiver can be used to listen to a DX station while transmitting on a different frequency.
* The sub receiver can be used to listen to a pileup while transmitting on a different frequency.
* The sub receiver can be used to listen to a net while transmitting on a different frequency.

## The software sends the Power-ON signal, then the radio turns off after few seconds

This is an issue with the firewall, please read the OL-Master software manual to see how to properly configure the local firewall software

## How do I create a custom filter to match my receive/transmit profile?

Custom filters for both RX and TX can be created using the **VAR1** and **VAR2** filters of the OL-Master software, those filters can be customized using the **HIGH** and **LOW** sliders to match the desired profile. Filter settings are then stored automatically in the database. These filters can be different for each band, once they are configured, they will be available whenever needed just by clicking either **VAR1** or **VAR2**.

## Does the OL-SDR support CAT interfaces?

Yes, the OL-SDR supports CAT (Computer Aided Transceiver) interfaces. It can connect to third party software via RS232 (using virtual serial port emulators), and it also supports remote control via TCP/IP using the MQTT protocol.

## What radio models does the OL-SDR emulate for CAT control?

The OL-SDR emulates a subset of commands from two different radio architectures: the Kenwood TS-2000 and the FlexRadio/PowerSDR. Because of the different radio designs, the TS-2000 command set is limited to the most important functions (like frequency tuning, VFO controls, RX and TX commands and more), while the FlexRadio/PowerSDR command set is quite extensive.
