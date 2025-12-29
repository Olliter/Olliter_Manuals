![Olliter logo](../resources/olliter-logo.png)

# OL-Master - General Recommendations

This section provides general recommendations for using the Olliter SDR in various modes and configurations. These guidelines cover common issues and best practices for optimal performance and user experience.

## Digital modes (FT8)

The following steps outline the proper configuration of the Olliter SDR for operating in FT8 mode. Ensure that the settings are applied carefully to avoid issues with audio processing and transmission.

### Using Virtual Audio Cable (VAC)

* VAC RX1: Set the software to use VAC RX1 (or RX2, RX3, or RX4) for audio input, but do not use the \"Common VAC\" setting. This configuration ensures that the audio is correctly routed through the system without interference from other processes.

* VAC Type: Use monodirectional VAC for both input and output. You may need to configure separate VACs for input and output if your version supports bidirectional audio (such as Muzychenko\'s VAC). If your system uses bidirectional VAC, it is possible to use a single VAC for both input and output.

### Audio Levels and Filters

* Compressor and Leveler: In FT8 mode, disable both the Compressor and Leveler. These audio processors are not required in FT8 and may cause distortion or improper modulation of the digital signal.

* VAC RX Level: Set the VAC RX level to approximately -27 dB. This ensures that the audio level is appropriate for digital signal processing, avoiding overload.

* VAC TX Level: Set the VAC TX level to 0 dB. This level ensures that the transmitted signal is clear and within the normal operational range for FT8 transmissions.

### Transmit and Receive Filters

* TX Audio Filter: When WSJT-X is set to Radio -\> Split: NONE, the TX audio filter of the Olliter SDR must be adjusted to match the RX filter and the bandwidth used by FT8. For example, if you are using FT8 between 200 Hz and 3500 Hz, the TX audio filter should also be set between 200 Hz and 3500 Hz. Additionally, the RF filter should be aligned to this range.

* Split Mode (RIG or FAKE): If using WSJT-X with the \"Split\" mode set to either RIG or FAKE, there is no need to modify the TX audio filter beyond its normal range. In this case, set the TX filter to 300 Hz to 2700 Hz, and FT8 will adjust the RF frequency to keep the audio signal centered within the bandwidth. The RF filter can be set freely, but note that it will limit the FT8 band visible on WSJT-X or similar software.

## SSB mode

When switching from FT8 or other digital modes to SSB, several adjustments need to be made to ensure optimal audio performance. Follow these instructions for setting up the Olliter SDR for SSB operations.

### Microphone Voltage Considerations

* Yaesu Microphones: Typically require 5V for proper operation.

* ICOM Microphones: Typically require 8V. Verify the correct voltage before connecting the microphone to prevent damage or malfunction.

Please refer to the Microphone input chapter to see how to change the microphone voltage.

### Switching from FT8 to SSB

* Deactivate VAC: After using FT8 or other digital modes, ensure that VAC RX1 (or RX2, RX3, RX4) is deactivated before switching to SSB. Failure to do so may prevent audio from being transmitted properly.

### Audio Processing Settings for SSB

* Leveler: Reactivate the Leveler when operating in SSB mode. The recommended setting is 7 dB, which helps maintain consistent output levels. After adjusting, verify that the Automatic Level Control (ALC) is set to approximately 3 dB.

* Compressor: For SSB, it is recommended to enable the Compressor at 8 dB, or even 10 dB, especially when using the PureSignal feature. This improves the overall signal clarity and transmission quality.

### Transmitting Filter Settings

* TX Audio Filter: In the Setup -\> Transmitting menu, adjust the TX audio filter according to your preferences. The default range for voice transmission is 300 Hz to 2700 Hz; this range provides a balance between intelligibility and bandwidth usage.
