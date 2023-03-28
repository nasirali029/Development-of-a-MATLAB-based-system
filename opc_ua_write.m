clear, clc
% Connecting a OPC UA client 
uaClient = opcua('localhost', 62640);
% Connect to the Server
connect(uaClient)
% Browse OPC UA Server Namespace
serverNodes = browseNamespace(uaClient)
% Write Current Values to the OPC UA Server
newValue = 22.5
writeValue(uaClient, serverNodes, newValue);
[value, timestamp, quality] = readValue(uaClient, serverNodes)

% Disconnecting
disconnect(uaClient)

