function PlotFigure(x, y1, y2, titre)
    figure('Name', titre) 
    scatter(x,y1(:,1), 1.0, 'r')
    hold on  
    scatter(x,y2(:,1), 1.0, 'b')
      
     
    
    title(strcat(titre, ' - Fréquence'));
    legend('Train 1', 'Train 2');
    xlim([0 100]);
    
    
    xlabel('X');
    ylabel('Y');
    
    figure('Name', titre) 
    scatter(x,y1(:,2), 1.0, 'r')
    hold on  
    scatter(x,y2(:,2), 1.0, 'b')
      
     
    
    title(strcat(titre, ' - Intensité'));
    legend('Train 1', 'Train 2');
    xlim([0 100]);
    
    
    xlabel('X');
    ylabel('Y');
    
        %{
    figure('Name', titre) 
    scatter(x,y1(2,:), 0.5, 'r')
    hold on  
    scatter(x,y2(2,:), 0.5, 'b')
      
     
    
    title(titre + ' - Fréquence');
    legend('Train 1', 'Train 2');
    xlim([0 100]);
    %ylim([-5 5]);
    
    xlabel('X');
    ylabel('Y')
    %}
    %{
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
%}
end