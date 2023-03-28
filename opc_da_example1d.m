clear, clc

% Connecting to OPC Server 
da = opcda ('localhost', 'Matrikon.OPC.Simulation.1');
connect(da);

% Creating a group 
grp = addgroup (da,'DemoGroup');

%Add Tags 
%ItmList = browsenamespace(da); 
ItmList = {'Bucket Brigade.Real4', 'Random.Real4'}; 

itm = additem(grp, ItmList);

% Retrieve Data 
data = read(grp); 
data.ItemID
data.Value
data.TimeStamp
data.Quality
 

%Clean Up
disconnect (da)
delete (da)

