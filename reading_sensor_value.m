% Connect to OPC Server
OPC_DA = opcda('localhost', 'Matrikon.OPC.Simulation.1');
connect(OPC_DA);

% Create Group
grp = addgroup(OPC_DA, 'Group0');

%Add Tags
itmIDs = {'Bucket Brigade.Real4'};
itm = additem(grp, itmIDs);

N=50;

for i=1:N
    % Retrieve Data
    data = read(grp);
    opcdata(i) = data.Value
    pause(1)
end
disconnect(OPC_DA)

figure
p = plot(opcdata);
p.LineStyle = "-";
p.Color = "blue";
p.Marker = ".";
xlabel('Data Point (second)')
ylabel('Temperature [K]')
clear, clc
