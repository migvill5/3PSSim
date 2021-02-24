function s = hemihead(h, L, D)

    A = 2/(D*sqrt(1-(1-(2*h/D))^2));
    B = ((1/D)-(h/(2*D^2)))/(2*sqrt((h/D)-(h/D)^2));
    C = sqrt((h/D)-(h/D)^2)+B;
    D = (h/(2*D^2));
    E = (1/3*D)*(h/D)^2;
    
    W1 = (L*D^2)*((A/4)-(B/2)+(C/D));
    W2 = (pi()*D^3)*(3*D-2*E);
    
    s = W1 + W2;

end

