% Pesach Nestlebaum contributed the following script:

% The Moment about a Point is defined as r x F, or the postion vector
% crossed product with the acting Force vector. We simply need to define
% some position vectors and set them equal to variables, then write the
% function for solving the cross product.


F=120;         % Force 
vOA=[1 4 0];   % Position Vector from O to A
vOB=[1 4 2];   % Position Vector from O to B
vOC=[5 0 0];   % Position Vector from O to C 

BC=vOC-vOB;    % Force Vector BC, along which our force 'F' acts.


squareBC=sqrt((BC(:,1)^2)+(BC(:,2)^2)+(BC(:,3)^2)); % Defining the square root of BC
                                                    % by indexing through
                                                    % the elements of BC
                                                    % and squaring each.
                                                    % This makes it much
                                                    % simpler to define the
                                                    % Unit Vector for BC
                                                

uBC=[(BC(:,1)/squareBC) (BC(:,2)/squareBC) (BC(:,3)/squareBC)]; % Unit Vector for BC

vF=F*uBC;                                                       % Force Vector is equal to Force 
                                                                % times unit vector of BC
                                                                
                                                              
                                                                

Moment=cross(vOB,vF);                                           % Moment equation

disp('Moment = ')
disp(moment);


