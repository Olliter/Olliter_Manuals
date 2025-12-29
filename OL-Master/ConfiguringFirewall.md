![Olliter Logo](../resources/olliter-logo.png)

# Configuring the Firewall for OL-Master Software

Network communication to the device is performed using UDP protocol, a security system exception must be created for the software to work reliably.

> [!TIP]
> Starting from OL-Master software version 2.0.0.3, the firewall exception is created during the installation process if you choose to allow it. If you are using an older version of the software, or if you want to manually create the exception, please follow the instructions below.

Open the Windows firewall settings.

![Windows defender with advanced security](./resources/image22.png)

Select "Inbound connection rules" on the left menu.

![Inbound connection rules](./resources/image23.png)

Click on "New rule" on the right menu.

![New program rule](./resources/image24.png)

Select \"Program" and click "next".

![Create program rule](./resources/image25.png)

Click on "Browse" and navigate to `C:/Program Files/Olliter/Ol-master.exe`

![Browse to OL-Master software](./resources/image26.png)

![Locate OL-Master software](./resources/image27.png)

Click on "Next"

![Proceed with selection](./resources/image28.png)

Select "Allow connections" and click "Next".

![Allow connection](./resources/image29.png)

Now select the kind of network that you are using, by default it should be "Private", if you are using a different kind of network, please select the option that best fits your configuration.

![Select kind of network](./resources/image30.png)

Insert any name you like and then click on "Complete".

![Complete rule creation](./resources/image31.png)
