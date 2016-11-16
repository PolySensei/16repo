function PlotFigure(x1, y1, z1, x2, y2, z2, titre, resultat)
    figure('Name', titre) 
    scatter3(x1,y1,z1, 0.5, 'r')
    hold on  
    scatter3(x2,y2,z2, 0.5, 'b')
    hold on
    
    if(resultat == -1)
        scatter3(x2(end),y2(end), z2(end), 100, 'b', 'x');
    elseif(resultat == 1)
        scatter3(x1(end),y1(end), z1(end),100, 'r', 'x');
    elseif(resultat == 0)
        scatter3(x2(end),y2(end), z2(end),100, 'g', 'x');
    end
    
    
    title(titre);
    legend('Bloc', 'Balle');
    xlim([-5 5]);
    ylim([-5 5]);
    
    xlabel('X');
    ylabel('Y')
    zlabel('Z')
    
    titre=strcat(titre, ' XY');
    figure('Name', titre) 
    scatter(x1,y1, 0.5, 'r')
    hold on  
    scatter(x2,y2, 0.5, 'b')
    hold on
    
    if(resultat == -1)
        scatter(x2(end),y2(end), 100, 'b', 'x');
    elseif(resultat == 1)
        scatter(x1(end),y1(end), 100, 'r', 'x');
    elseif(resultat == 0)
        scatter(x2(end),y2(end), 100, 'g', 'x');
    end
    
    title(titre);
    legend('Bloc', 'Balle');
    xlim([-5 5]);
    ylim([-5 5]);
    %zlim([0 5]);
    xlabel('X');
    ylabel('Y')

end