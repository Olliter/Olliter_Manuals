# MQTT Interface Documentation

## Overview

This documentation provides details on the MQTT topics, payloads, and commands supported by the system. This will guide you in integrating with the MQTT broker for subscribing to updates and publishing commands related to the receiver’s configuration and operations.

OL-Master can connect both to an internal (MQTTNet) or external broker. Using an authentication with username and password is highly recommended.

## MQTT Topics and Payload Structure

### Receiver Control and Status

#### Get status from OL-Master

Subscribe to receive status updates of a specific receiver. The publishing interval is set in `Setup > COM > MQTT > Publish interval`

- `receivers/get/{receiver_id}`

#### Send command to OL-Master

Publish commands to control a specific receiver. This feature needs to be enabled in `Setup > COM > MQTT > Accept commands`, it is disabled by default.

- `receivers/set/{receiver_id}`

#### Usage:

For both get and send topics, a JSON structure containing control commands or status information is used.

##### Example

```json
{
    "software_id": "your_software_id",
    "txpower": "20",
    "monitor_vol": "50",
    "band": "B40M",
    "master_vol": "0.8",
    "receiver_a": 
    {
        "active": "true",
        "frequency": "7.050",
        "mode": "LSB",
        "filterlow": "300",
        "filterhigh": "3000",
        "volume": "75",
        "squelch": "0",
        "mox": "false",
        "txvfo": "false"
    },
    "receiver_b": 
    {
        "active": "false",
        "frequency": "7.150",
        "mode": "USB",
        "filterlow": "-300",
        "filterhigh": "3000",
        "volume": "70",
        "squelch": "0",
        "mox": "false",
        "txvfo": "false"
    }
}
```

#### Detailed description

##### Receiver Control Commands

- **Receiver ID:** Represents the specific receiver (1-4) being targeted (which is part of the topic).
- **Payload Structure:** The payload is a JSON object that may contain one or more of the following properties:

- **Commands for Individual Receivers:**
   - `active`: `"true"` or `"false"` (Toggle receiver power)
   - `frequency`: Frequency in MHz (e.g., `"7.050"`)
   - `mode`: Operating mode (`"LSB"`, `"USB"`, `"AM"`, `"CWU"`, etc.)
   - `filterlow`: Low filter cutoff in Hz (e.g., `"-300"`)
   - `filterhigh`: High filter cutoff in Hz (e.g., `"3000"`)
   - `volume`: Receiver volume (0-100)
   - `squelch`: Squelch level (not yet implemented)
   - `mox`: boolean string `"true"` or `"false"` (Toggle transmission)
   - `txvfo`: boolean string `"true"` or `"false"` (Set VFO for transmission)

**Example:**
```json
{
    "receiver_a": {
    "active": "true",
    "frequency": "7.050",
    "mode": "LSB",
    "filterlow": "-300",
    "filterhigh": "3000",
    "volume": "75",
    "mox": "false"
    }
}
```

##### Global Settings Commands

- **Payload Structure:** Commands that control settings for the entire system (not specific to individual receivers).

**Available Commands:**
- `txpower`: Transmission power (0-100)
- `monitor_vol`: Monitor volume (0-100)
- `band`: Selected band (`"B160M"`, `"B40M"`, etc.)
- `master_vol`: Master volume (0.0-1.0)

**Example Command:**

```json
{
    "txpower": "20",
    "monitor_vol": "50",
    "band": "B40M",
    "master_vol": "0.8"
}
```

### **Panadapter Data**

Subscribe to receive compressed panadapter data for a specific receiver.

- `receivers/panadapter/{receiver_id}`

#### Usage

OL-Master published a Base64-encoded compressed JSON containing panadapter data, this payload must be decompressed, then deserialized to retrieve the `float` array of the spectrum data.

Panadapter data is only sent if the specific receiver is enabled.

#### Decompression example

```csharp
private void ReceivePanadapterData()
{
    // Connect to the broker and subscribe to the topic
    // ...

    // Parse received data
    if (int.TryParse(splitTopic[2], out int targetReceiver) && targetReceiver >= 1 && targetReceiver <= 4)
    {
        // Get the raw Base64 data
        string base64Payload = payload;

        // Decode the Base64 string back to the original compressed byte array
        byte[] receivedCompressedPayload = Convert.FromBase64String(base64Payload);

        // Decompress the payload
        byte[] decompressedPayload = Decompress(receivedCompressedPayload);

        // Convert the byte array back to a string (JSON)
        string jsonPayload = Encoding.UTF8.GetString(decompressedPayload);

        // Decode data from JSON to the class
        var panadapterData = HandlePanadapterPayload(jsonPayload);
        Olliter_SDR.Receivers[targetReceiver - 1].SpectrumData = panadapterData.Data;
    }
}

private static byte[] Decompress(byte[] compressedData)
{
    using (var compressedStream = new MemoryStream(compressedData))
    using (var gzipStream = new GZipStream(compressedStream, CompressionMode.Decompress))
    using (var resultStream = new MemoryStream())
    {
        gzipStream.CopyTo(resultStream);
        return resultStream.ToArray();
    }
}
```

#### Payload Example (after decompression)

```json
{
    "software_id": "your_software_id",
    "data": [0.1, 0.2, 0.0, -0.1, ...]
}
```

## Subscribing and Publishing

To use the MQTT interface:

- **Subscribe** to topics like `receivers/get/1` to receive status updates.
- **Subscribe** to topics like `receivers/panadapter/1` to receive panadapter content.
- **Publish** to topics like `receivers/set/1` to send commands to the receivers.

### Error Handling and Logs
Any errors or invalid commands will be logged internally by the system and can be viewed via standard logging interfaces.

This documentation should provide the necessary guidelines for interacting with the MQTT broker effectively. Make sure to use valid JSON payloads as per the structure described.