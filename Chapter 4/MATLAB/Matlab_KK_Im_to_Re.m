freq = logspace(-5,5,100);
omega_values = 2*pi*freq;
Z1 = RC(omega_values);
Z1_KK_real = KK(omega_values);
Z1_column_names = {'Z1_real', 'Z1_imag', 'Z1_KK_real'};
Z1_table = array2table([real(Z1)',imag(Z1)',Z1_KK_real'], 'VariableNames', Z1_column_names);
writetable(Z1_table, 'Z1_KK.csv');

figure(1)
hold on
box on
plot(real(Z1),-imag(Z1),'kd','MarkerSize',10)
plot(Z1_KK_real,-imag(Z1),'ro')
xlabel('Z_{1}^{\prime}, [\Omega]')
ylabel('-Z_{1}^{\prime\prime}, [\Omega]')
axis equal
legend('RC Model','KK')

figure(2)
Z2 = nRC(omega_values);
Z2_KK_real = nKK(omega_values);
Z2_column_names = {'Z2_real', 'Z2_imag', 'Z2_KK_real'};
Z2_table = array2table([real(Z2)',imag(Z2)',Z2_KK_real'], 'VariableNames', Z2_column_names);
writetable(Z2_table, 'Z2_KK.csv');

hold on
box on
plot(real(Z2),-imag(Z2),'kd','MarkerSize',10)
plot(Z2_KK_real,-imag(Z2),'ro')
xlabel('Z_{2}^{\prime}, [\Omega/A]')
ylabel('-Z_{2}^{\prime\prime}, [\Omega/A]')
axis equal
legend('Weakly nonlinear RC Model','KK')

function Z1 = RC(omega)
    R = 1;
    C = 1;
    omega_star = R*C*omega;
    Z1 = R./(1+omega_star*1i);

end

function F = KK (omega)
    syms x
    R = 1;
    C = 1;
    omega_star = R*C*x;

    integrand = (2 / pi) * (x * (-omega_star * R / (1 + (omega_star)^2)) ./ (omega.^2 - x^2));
    F = real(eval(int(integrand,[0 inf],PrincipalValue=true)));
end

function Z2 = nRC(omega)
    F = 96485.33212;
    R = 8.314462618;
    T = 298.15;
    f = F/(R*T);
    R = 1;
    C = 1;
    e = 0.1;

    omega_star = R*C*omega;

    Z2 = -0.5 * e*f*R^2./(1+4*1i*omega_star-5*omega_star.^2-2*1i*omega_star.^3);
end

function F = nKK (omega)
    F = 96485.33212;
    R = 8.314462618;
    T = 298.15;
    f = F/(R*T);
    syms x
    R = 1;
    C = 1;
    e = 0.1;
    omega_star = R*C*x;

    Z2 = -0.5* e*f*R^2./(1+4*1i*omega_star-5*omega_star.^2-2*1i*omega_star.^3);

    integrand = (2 / pi) * ((x * imag(Z2)) ./ (omega.^2 - x^2));

    F = real(eval(int(integrand,[0 inf],PrincipalValue=true)));
end