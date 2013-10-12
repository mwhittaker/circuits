close all;

% Hello and welcome to a niceplot demo. Below you will find a brief overview of
% the use of the niceplot family. First, we generate some sample data to play
% with.
t = 0:0.1:(2*pi);
sin_ = sin(t);
cos_ = cos(t);
exp_ = exp(t);

% Now, we explore the niceplot family. The family includes the functions nplot,
% niceplot, nicerplot, nicestplot. We'll discuss nlegend later. As we go from
% nplot to nicestplot, the number of arguments and the level of customizability
% increases. That is, nplot is the simplest to invoke yet the least flexible.
% nicestplot is the most complex to invoke yet is very flexible. 
%
% We'll begin with nplot. nplot takes in 5 parameters: the x data, the data,
% the title, the x-axis label, and the y-axis label.
figure;
nplot(t, sin_, 'This is a title', 'time (x-axis)', 'sin(t) (y-axis)');

% Notice that we explicitely created a new figure before plotting. All
% niceplotting functions internally hold on. This way, we can easily plot
% multiple graphs on the same figure.
figure;
nplot(t, sin_, '', '', '');
nplot(t, cos_, 'Various Functions', 'time (s)', 'f(t)');

% Notice that the color of each plot is blue, making the plots hard to
% distinguish. We need a way to customize the color of the plot. We can do this
% with niceplot. The last argument of niceplot if the 'color' field which is
% typically the third argument passed to MATLAB's plot.
%
% Also notice that only the last set of title and labels was included. Whenever
% multiple plots are plotted on the same figure, the last set of title and
% labels is used.
figure;
niceplot(t, sin_, '', '', '', 'r');
niceplot(t, sin_, '', '', '', 'b--');
niceplot(t, sin_, '', '', '', 'go');
niceplot(t, cos_, 'Various Functions', 'time (s)', 'f(t)', 'k');

% Now the plots are distinguishable, but which is sin and which is cosine. We
% can add a legend with nlegend. nlegend behaves exactly like legend, except it
% automatically sets the location to 'Best'.
figure;
niceplot(t, sin_, '', '', '', 'b');
niceplot(t, cos_, 'Various Functions', 'time (s)', 'f(t)', 'k');
nlegend('Sine', 'Cosine');

% Now lets plot the exponential.
figure;
niceplot(t, exp_, 'Exponential!', 't', 'exp(t)', 'k');

% That looks great, but what if we want to use a log scale for the y-axis. We
% need a way to customize the plotting function that niceplotters internally
% invoke. We can do this with nicerplot. The new first parameter is a function
% handle of a plotting function.
figure;
nicerplot(@semilogy, t, exp_, 'Exponential', 't', 'exp(t)', 'k');

% Well, what if you dislike the size of the plotted lines or the size of the
% labels. You can customize those with nicestplot.
figure;
nicestplot(@plot, t, sin_, 'Title', 't', 'sin(t)', 'r', 1, 8);

% These niceplots are nice! But, how do I save them to file so that I can
% include them in my lab templates? All niceplotters return the plot handle
% returned by the plotting function. This can be saved to file.
figure;
np = nplot(t, t, 't', 'x', 'y');
%saveas(np, 'NicePlot', 'png');

% I've left the saving commented out so that you don't go around saving
% niceplots everywhere. 

% That's all you have to know about niceplot. Enjoy, and remember to add the
% niceplot directory to MATLAB's search path in order to invoke the
% niceplotters from within your code!
