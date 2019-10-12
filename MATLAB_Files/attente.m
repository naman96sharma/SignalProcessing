  function [t_attente, t_fin] = attente(dt_arrivee, t_traitement)
% simulation d'une file d'attente
%
% CALL: [t_attente] = attente(dt_arrivee, t_traitement)
%   t_attente    = vecteur des durées d'attente par client
%   t_fin        = vecteur des instants de fin de traitement par client
%   dt_arrivee   = vecteur des durées entre chaque arrivee de client
%   t_traitement = vecteur des durées de traitement de chaque client
%
% ATTENTE cacule et retourne le temps d'attente pour chaque
% client à son arrivée. Retourne également le temps de fin de traitement.
% E.V


n=length(dt_arrivee);

if (n>10000)
    error ('capacité de client maximale dépassée');
end

t_arrivee = cumsum(dt_arrivee);

% figure(1)
% stem(t_arrivee, ones(n,1));
% title('processus des instants d''arrivee');
% drawnow

t_attente = zeros(n,1);
t_fin = zeros(n,1);
t_fin(1) = t_traitement(1);
for i=2:n
    if t_arrivee(i) < t_fin(i-1)
        t_attente(i) = t_fin(i-1) - t_arrivee(i);
        t_fin(i) = t_fin(i-1) + t_traitement(i);
    else
        t_attente(i) = 0;
        t_fin(i) = t_traitement(i)+t_arrivee(i);
    end
end

% figure(2)
% stem(t_arrivee, t_attente);
% xlabel('instant d''arrivee');
% ylabel('temps d''attente');
% title('graphe des durees d''attente');
% 
% figure(3)
% plot(t_arrivee, t_fin);
% xlabel('instant d''arrivee');
% ylabel('instant de fin de traitement');
% title('graphe des instants de fin de traitement par client')

