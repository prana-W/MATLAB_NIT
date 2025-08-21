% Generation of Continuos sign

% 1.

t = 0:pi/6:5*pi;

y1 = 5*sin(4*pi*t);
y2 = 6*sin(4*pi*t + pi/3);
y3 = 8*sin(4*pi*t - pi/3);

% plot(t, y1, t, y2, t, y3);

% 2. 

t=0:0.0001:10;
y1 = 3*exp(0.4*t);
y2 = 150*exp(-0.9*t);

% plot (t, y1, t, y2);

% 3. Ramp Signal

t = 0:0.001:10;
y1=5*t;
y2=7*t-10;
y3=-3*t+10;

% plot (t, y1, t, y2, t, y3);

% Use `help [foo]` (here foo: gensig) in the terminal for searching new funciton/command
% thorugn command window

% 4a. Square Wave


[u, t] = gensig('square', 3, 20, 0.001); % The first is type, the TAU is time perios, TF is duration and TS is time step
% plot (t, u);

% Amplitude is 1 by default. If you want to change the amplutude, the just
% mnutiply anything by u. Say, 5*u, means, aplitude is 5.

% 4b.

t = 0:0.001:1;
y = square(2*pi*5*t);

% plot (t, y);

% 5. Pulse Train

[u, t] = gensig ('pulse', 2, 10, 0.001);
% plot(t, u);

% 6. Sawtooth and Traingular

% Use `help sawtooth` in command window, for reference

% Sawtooth

t = 0:0.001:10;
y1 = sawtooth(t);

% plot(t, y1)

% Triangular

w = 0.98; % w must be between 0 to 1
y2 = sawtooth(t, w);
plot(t, y2);