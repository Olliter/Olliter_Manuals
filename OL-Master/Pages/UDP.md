Sure, here’s the end-user documentation for the UDP data formatted similarly to your MQTT interface documentation.

# UDP Interface Documentation

## Overview

This documentation provides details on the UDP topics, payloads, and commands supported by the system. It will guide you in integrating with the UDP interface for receiving updates and sending commands related to receiver status and panadapter data.

## UDP Topics and Payload Structure

### Receiver Status Data

#### Get status from OL-Master

UDP packages are sent to an internal UDP server so third-parties applications can receive status updates of a specific receiver. The publishing interval can be configured in the system settings.

- **UDP Label:** `receivers|get|{receiver_index}|`

#### Usage

The receiver status data is sent as a JSON object containing the current status of a specific receiver.

##### Example

```json
{
    "software_id": "example_id",
    "txpower": "50",
    "monitor_vol": "70",
    "band": "B20M",
    "master_vol": "0.6",
    "receiver_a": 
    {
        "active": "true",
        "frequency": "14.200",
        "mode": "USB",
        "filterlow": "-200",
        "filterhigh": "2500",
        "volume": "80",
        "squelch": "5",
        "mox": "true",
        "txvfo": "false"
    }
}
```

#### Detailed Description

##### Receiver Status Commands

- **Receiver Index:** Represents the specific receiver (0-3) being targeted (which is part of the topic).
- **Payload Structure:** The payload is a JSON object that contains various status details of the receiver.

**Example:**

```json
{
    "receiver_a": {
        "active": "true",
        "frequency": "14.200",
        "mode": "USB",
        "filterlow": "-200",
        "filterhigh": "2500",
        "volume": "80",
        "squelch": "5",
        "mox": "true"
    }
}
```

### Compressed Panadapter Data

#### Get panadapter data from OL-Master

Contains compressed panadapter data for a specific receiver.

- **UDP Label:** `receivers|panadapter|{receiver_index}|`

#### Usage

OL-Master publishes Base64-encoded compressed JSON containing panadapter data. The payload needs to be decompressed and deserialized to retrieve the float array of spectrum data.

#### Decompression Example

```csharp
private void ReceivePanadapterData()
{
    // Connect to the broker and subscribe to the topic
    // ...

    // Parse received data
    if (int.TryParse(splitTopic[2], out int targetReceiver) && targetReceiver > 0 && targetReceiver <= 4)
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
        YourReceiverArray[targetReceiver - 1].SpectrumData = panadapterData.Data;
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
    "Id": "client_id",
    "Data": [0.1, 0.2, 0.0, -0.1, ...]
}
```

## Publishing Data

To use the UDP interface, applications should:

- **Listen** to labels like `receivers|get|{receiver_index}|` to send status updates.
- **Listen** to labels like `receivers|panadapter|{receiver_index}|` to send panadapter data.

### Error Handling and Logs

Any errors or issues with data publishing will be logged internally by the system. Ensure that the UDP server is running and correctly configured to handle data requests and responses.

This documentation should provide the necessary guidelines for interacting with the UDP interface effectively. Ensure to follow the JSON structures and topic formats as described.

Certainly! Here's a detailed description of UDP package labeling in the context of your system:

## UDP Package Labeling

In the UDP interface, data packets are labeled with specific prefixes to indicate their type and context. This labeling helps distinguish different types of data and ensures that the receiver of the data can interpret it correctly. Below is a description of the UDP package labeling used in the system.

### Label Structure

Each UDP package consists of a label prefix followed by the payload data. The label prefix helps identify the type of data and the context in which it should be processed. The general format of the label is:

```
<label_prefix>{data}
```

#### Label Prefixes

1. **Receiver Status Data**

   **Label Prefix:** `receivers|get|{receiver_index}|`

   - **Purpose:** This label prefix is used for broadcasting receiver status data.
   - **Structure:** 
     - `receivers` - Indicates that the data is related to receivers.
     - `get` - Specifies that the data represents a request for status information.
     - `{receiver_index}` - The index of the receiver (e.g., `0`, `1`, `2`, `3`).
     - `|` - Separator between the receiver index and the payload.

   **Example:** 
   ```
   receivers|get|0|{json_payload}
   ```

2. **Panadapter Data**

   **Label Prefix:** `receivers|panadapter|{receiver_index}|`

   - **Purpose:** This label prefix is used for broadcasting panadapter data.
   - **Structure:** 
     - `receivers` - Indicates that the data is related to receivers.
     - `panadapter` - Specifies that the data represents panadapter information.
     - `{receiver_index}` - The index of the receiver (e.g., `0`, `1`, `2`, `3`).
     - `|` - Separator between the receiver index and the payload.

   **Example:**
   ```
   receivers|panadapter|0|{compressed_json_payload}
   ```

### Examples of UDP Package Labeling

#### Receiver Status Data

**Label Prefix:** `receivers|get|1|`

**Example Payload:** 

```json
{
    "software_id": "example_id",
    "txpower": "50",
    "monitor_vol": "70",
    "band": "B20M",
    "master_vol": "0.6",
    "receiver_a": 
    {
        "active": "true",
        "frequency": "14.200",
        "mode": "USB",
        "filterlow": "-200",
        "filterhigh": "2500",
        "volume": "80",
        "squelch": "5",
        "mox": "true"
    }
}
```

**Complete UDP Package:**

```
receivers|get|1|{"software_id":"example_id","txpower":"50","monitor_vol":"70","band":"B20M","master_vol":"0.6","receiver_a":{"active":"true","frequency":"14.200","mode":"USB","filterlow":"-200","filterhigh":"2500","volume":"80","squelch":"5","mox":"true"}}
```

#### Panadapter Data

**Label Prefix:** `receivers|panadapter|2|`

**Example Payload (Compressed JSON):**

```json
{
    "Id": "client_id",
    "Data": [0.1, 0.2, 0.0, -0.1, ...]
}
```

**Complete UDP Package:**

```
receivers|panadapter|2|{compressed_json_payload}
```

**Note:** The `compressed_json_payload` is a Base64-encoded compressed JSON string that represents the panadapter data.

## Summary

- **Label Prefix:** Identifies the type and context of the data.
- **Payload Data:** Contains the actual information being transmitted.
- **Separator (`|`):** Used to separate different components of the label prefix and payload.

Understanding the labeling system is crucial for correctly interpreting and processing UDP data packages. Ensure that your UDP clients and servers are configured to handle these labels and payloads according to the specifications outlined.