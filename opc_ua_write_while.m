% Create OPC Toolbox object
uaClient = opcua('localhost', 62640);

% Connect to the Server
connect(uaClient)
serverNodes = browseNamespace(uaClient)

% Write random values to the item in a while loop
while true
    value = rand();  % Generate random value
    writeValue(uaClient, serverNodes, value);
end

% Disconnecting
disconnect(uaClient)