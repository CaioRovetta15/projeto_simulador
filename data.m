maximo=max(Brake_Pos.Value);
normBrake=Brake_Pos.Value/maximo;
x = 1:1:6842;
for ii = 1:length(x)
      plot(Car_Coord_X.Value(ii),ii)
      hold on
end
figure(1)
axis([-900 900 -900 900])
hold on
for k = 1:length(Car_Coord_Z.Time)-1
    plot([Car_Coord_X.Value(k),Car_Coord_X.Value(k+1)],[Car_Coord_Y.Value(k),Car_Coord_Y.Value(k+1)],'Color',[normBrake(k) 1-normBrake(k) 0],LineWidth=2.5);
    drawnow
end

figure
plot(Car_Coord_X.Value, Car_Coord_Y.Value)