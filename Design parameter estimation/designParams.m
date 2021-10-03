clear
clc

AR = input("Aspect ratio: ");
wingspan = input("Enter wingspan: ");
chord = AR/wingspan
wingarea = chord*wingspan

% Stab area is 15% of wing area
stab_area = 0.15*wingarea
% Elevator area is 20% to 30% of stab area
el_area = 0.18*stab_area
% Fin area is 33% of stab area
fin_area = 0.33*stab_area
% Rudder area is 33% fin area
rud_area = 0.33*fin_area

% Aileron: 
aileron_l = 0.25*wingspan
aileron_w = 0.25*chord

% Fuselage:
fuselage_l = 0.75*wingspan
fuselage_b = 0.15*fuselage_l
fuselage_ahead_wing = 1.5*chord
wing_t_to_el = 2.5*chord

% Stab: the aspect ratio for stab is about 3:1; stab area is known 
stab_w = sqrt(stab_area/3)
stab_l = 3*stab_w

% Elevator: elevator width is about 1/6th of stab width
el_w = stab_w/6

% Rudder and fin: 
rud_h = fuselage_l/5
rud_w = rud_area/rud_h
fin_w = fin_area/rud_h