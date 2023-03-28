# OPC DA/UA in MATLAB
In modern industrial control systems, the exchange of data between devices and software applications is a critical aspect that requires reliable and efficient communication protocols. OPC (Open Platform Communications) is a widely adopted standard for data access and exchange in these systems, offering a range of specifications and interfaces for different types of applications. MATLAB is a powerful tool for data analysis and visualization, with a rich set of built-in functions and libraries that can be extended to interface with external data sources, such as OPC servers.  Some of the tasks included in this project report such as implement OPC DA and OPC UA communication in MATLAB using appropriate libraries to enable data exchange between devices and applications. Furthermore, NI USB-TC01 sensor is used to read/write temperature data to Matrikon OPC server to perform real-time monitoring.
OPC provides a standardized and consistent way of exchanging data between systems, devices, and applications. The given below figure shows the overview of OPC server and its relation with different clients to communicate with each other. 
![Image](https://user-images.githubusercontent.com/56798428/228282694-8faf890a-1ef0-410a-88c0-69c5a1df3484.png)

To write a code in OPC UA, “OPCUA” function is used to create an OPC UA client object, and then connect, read and write functions are used to communicate with the server. The read function retrieves data from the server, while the write function sends data to the server. It also provides functions for browsing OPC servers and their data, such as the browse function, which allows us to browse the available items on an OPC server. Overall, using OPC DA/UA in MATLAB can provide a convenient way to access and analyze data from industrial control systems and devices.

### 	Create a MATLAB Script for Writing Data to an OPC UA Client
The OPC UA Client value can be observed in MATLAB command windows that it shows the same value which is written by server. To write values into OPC UA client “writeValue” function is used and the result is shown in given below figure. 
![Image](https://user-images.githubusercontent.com/56798428/228280121-8cb6307c-5c3e-4856-ae0a-ff23636349a9.png)

### Create a MATLAB Script for Reading Data from an OPC UA 
The given below figure shows the reading values from the OPC UA Client which is same in both tools such as 20. To read the values into OPC UA client “readValue” function is used. 
![Image](https://user-images.githubusercontent.com/56798428/228280671-66e57344-80fb-43df-863a-8b4839e0bc7f.png)

### Create a MATLAB Script for Reading Data from an OPC Matrikon
After creating MATLAB script on OPC UA server, some of the same task are performed on OPC Matrikon to read real-time sensor values and plot it in a graph so we can see the result. The sensor values can be seen in both figures. 
Firstly, the temperature sensor is connected with the OPC Matrikon via LabVIEW DAQ application in order to archive the sensor values. First, “opcda” function is used to create an OPC DA, and after connecting it to server the read read function is used to communicate with the server. 
![Image](https://user-images.githubusercontent.com/56798428/228281411-4a041b4a-5e98-4d09-a297-634f2b1d2085.png)
![Image](https://user-images.githubusercontent.com/56798428/228281472-c62da3ad-d1b4-43b4-8c33-02f5aaddf46d.png)
