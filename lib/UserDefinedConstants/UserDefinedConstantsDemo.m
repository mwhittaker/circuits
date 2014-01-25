%% Demo for the User Defined Constants capability in MATLAB
%
% Place the UserDefinedConstants directory on your MATLAB search path
% 
% The define function actually generates a function m-file on the fly.
% This allows any user defined constants to be usable in all of your
% own m-files without the need for a global declaration. It also allows
% your defined constants to remain viable from one MATLAB session to
% the next without needing to recreate them.

%% Defining a constant for later use, i.e., make phi = (sqrt(5) - 1)/2
defcon('phi',(sqrt(5) - 1)/2,'The Golden Ratio')

%% Using the constant that we just defined
phi

%% These defined constants work just like ones, zeros, nans, inf, etc.
% When called with an argument, the argument is treated as the desired size
% of the returned array. So if you always wanted a twos function, that
% works just like ones and zeros, it now takes only one line to create.
defcon('twos',2,'The number 2')
twos(4,5)

%%
% Just like ones or zeros, a scalar argument is interpreted to generate
% NxN square array
phi(3)

%% Help is available for the defined constant m-file
% The help block mirrors that of the ones and zeros functions.
help phi

%% The function is stored in the same directory where define lives on your search path
which phi

%% Constants can be complex numbers, uint8, etc.
defcon('zeta',1+3i,'A complex constant')
zeta

%%
% Even a scalar character is a valid constant
defcon('eh','A','The Capital letter ''A''')
eh(20,30)

%% Removing a defined constant is as simple as can be
% We just defined the constant eh. See that which finds it.
which eh
%%
% exist sees it too
exist eh
%%
% We can delete eh.m, but we need to specify the complete path to eh.
% So use which inside the delete function.
delete(which('eh.m'))
%%
% It is now gone, as it should be.
exist eh

%% Constants may be more than just simple scalar values
defcon('alph','The quick brown fox jumped over the lazy dog')
alph




