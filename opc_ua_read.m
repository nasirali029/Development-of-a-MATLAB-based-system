clear, clc
% Connecting a OPC UA client 
uaClient = opcua('localhost', 62640);
% Connect to the Server
connect(uaClient)
% Browse OPC UA Server Namespace
serverNodes = browseNamespace(uaClient)

% Read Current Values from the OPC UA Server
[value, timestamp, quality] = readValue(uaClient, serverNodes)

% Disconnecting
disconnect(uaClient)

