clear, clc

% Connecting to OPC Server 
serverList = opcuaserverinfo('localhost', 62640);

% Creating a OPC UA client 
uaClient = opcua('localhost', 62640);

% Connect to the Server
connect(uaClient)

% Browse OPC UA Server Namespace
serverNodes = browseNamespace(uaClient)

% Write Current Values to the OPC UA Server
newValue = 22.5
writeValue(uaClient, serverNodes, newValue);

% Disconnecting
disconnect(uaClient)

