clear, clc

% Connecting to OPC Server 
da = opcda ('localhost', 'Matrikon.OPC.Simulation.1');
connect(da);

% Creating a group 
grp = addgroup (da,'DemoGroup');

%Add Tags 
ItmList = {'Random.Real4'}; 
itm = additem(grp, ItmList);

% Retrieve Data 
data = read(grp); 
opcdata = data.Value 

%Clean Up
disconnect (da)
delete (da)
