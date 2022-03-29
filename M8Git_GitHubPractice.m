%M8 Git & GitHub Practice 
%Base Script written by Matthew Thompson 
%Any edits made to this Script shall have the contributers name attached to the changed/added lines of code.


%The following program is programed to find the 3 dimensional moment around point O caused by the force F at point B. The method to determine this moment will be the cross product method. 

%Housekeeping 
clc;                          %Clear workspace
clearvars;                    %Clear all variables

%Define variables and vectors
F = 120;                      %Value of force F in the direction C starting at B (lbs)

pO = [0 0 0];                 %Cartesian coordinates of point O (ft)
pA = [1 4 0];                 %Cartesian coordinates of point A (ft) (not technically needed in this calculation)
pB = [1 4 2];                 %Cartesian coordinates of point B (ft)
pC = [5 0 0];                 %Cartesian coordinates of point C (ft)

vOB = pB - pO;                %Defining the vector from point O to point B (ft)
vBC = pC - pB;                %Defining the vector from point B to point C (ft)

%Evaluation 
UvBC = vBC./norm(vBC);        %Calculating the Unit vector of vector BC by taking the vector BC and dividing it by the magnitude of vector BC
vF = F * UvBC;                %Calculating the Force vector at point B by multiplying F by the Unit vector of BC
MomentO = cross(vOB,vF);      %Calculating the Moment of force F at point O

%Display Solution
fprintf('Moment about point O caused by the force F  = \n x = %d (ft-lbs)\n y = %d (ft-lbs)\n z = %d (ft-lbs)\n',MomentO(:,1), MomentO(:,2), MomentO(:,3));
