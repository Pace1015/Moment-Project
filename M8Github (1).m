% This code was sourced by Antonio Gonzalez
% M8 Github Practice
% Partners: Pesach and Matthew Thompson

% The purpose of this script is to calculate the 3 dimensional moment
% at point O from a 120 pound force using the cross product. The script
% calculates the vectors necessary to compute the radial vector and the Force vector.

%Defining neccesary variables.
forcemag=120; % Units: pounds
pointC=[5,0,0]; % Units: feet
pointO=[0,0,0]; % Units: feet
pointA=[1,4,0]; % Units: feet
pointB=[1,4,2]; % Units: feet
r=pointB-pointO; % Creates the vector from the point of rotation to the moment arm
F=pointC-pointB; % Creates the vector from the moment arm to the Point C
vectorCB=F/((F(1)^2)+(F(2)^2)+(F(3)^2))^(1/2); % Calculates the unit vector of F
force=forcemag*vectorCB; % Calculates the actual force vector necessary for the cross product
moment=cross(r,force); % Calculates the moment

% Displaying the moment vector
% Quick clarification: The use of the if statements to output the vector is
% used in case the moment has zero components to make the component form
% more concise.

disp("The moment of Force BC about Point O is, in component form with units (foot-pounds): ");
if moment(1)~=0
    disp(moment(1)+"i")
end
if moment(2)~=0
    disp(moment(2)+"j ")
end
if moment(3)~=0
    disp(moment(3)+"k ")
end