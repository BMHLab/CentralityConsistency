function p = airport_network_worldplot(adj,airports,nodecolours)

load C:\Users\Stuart\Documents\MATLAB\airport_locations.mat

n = length(adj);
airport_location = zeros(n,2);
for i = 1:n
    Index = find(contains(globalairports,airports{i}));
    airport_location(i,:) = long_lat(Index,:);
    airportname{i} = Airport_fullname{Index};
end
  
n = max(nodecolours);

%close all
hold on
landareas = geoshow('landareas.shp','FaceColor',[1 1 1],'DisplayType', 'texturemap');
%h1 = scatter(airport_location(:,2),airport_location(:,1),'.k');
% h1 = scatter(airport_location(:,2),airport_location(:,1));
% uistack(h1,'top')

g = graph(adj);
p = plot(g,'Xdata',airport_location(:,2),'Ydata',airport_location(:,1));
p.NodeCData = nodecolours;
p.EdgeAlpha = .4;
p.LineWidth = .25;
p.MarkerSize = 4;

p.EdgeColor = [.5 .5 .5];

% c = lines(n);
% c = [.5 .5 .5; c];
% colormap(c);
% colorbar
xlim([-180 180])
ylim([-90 90])