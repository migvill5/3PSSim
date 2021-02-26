function v = hemivol(h,L,D)

vcil = (L*D^2)*(((1/4)*acos(1-(2*h/D))) - ((0.5-(h/D))*sqrt((h/D)+((h/D)^2))));
vcap = ((D*pi()^3)/12)*((3*(h/D)^2)-(2*(h/D)^3));

v = vcil + vcap;

end

