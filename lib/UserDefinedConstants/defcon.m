function defcon(ConstantName,Value,Description)
% defcon - define any scalar "constant" for future use in matlab
% usage: defcon(ConstantName,Value,Description)
%
% arguments: (input)
%  ConstantName - Character string containing the name of the defined
%       constant. This string must be a vlaid m-file name, but NOT
%       the name of an existing m-file on your search path.
%
%  Value - Any scalar number, character, cell, or struct.
%       
%  Description - (OPTIONAL) Character vector that describes the
%      defined constant. This string will become part of the help
%      in the m-file as created, inserted into the H1 line for
%      the defined constant.
%
% There are no output arguments for defcon.
%
%
% defcon creates a function definition on your search path with the
% specified name. This allows the defined constant to be available
% anywhere in your code, as long as the directory containing defcon
% is found on your searchpath. As such, it is better than a global
% variable, since it need not be declared to be global.
%
% Because a function m-file is actually created with the specified
% name, a defined constant is available for future use in later MATLAB
% sessions, until that defined constant is deleted.
%
% defcon generates an error when you create constants with names that
% overload existing functions as provided by MATLAB. This can cause
% problems in your code. As well, if you currently have a variable with
% that name defined in your workspace, matlab will not see the defined
% constant. While this is not as serious a problem, a warning message to
% that effect is then generated.
%
% The defined constant can be called with a size argument, so the
% scalar constant can be expanded to be an array of any size. As well,
% the scalar constant can be of any class or type admissable in matlab.
%
% Since defcon actually creates a function m-file on your search path,
% you can cause the defined constant to be removed from matlab using
% the delete command. You can also then edit the m-file as created
% if you so desire.
%
% 
% Example:
% % Define the value (sqrt(5) - 1)/2 as the constant phi.
%  defcon('phi',(sqrt(5) - 1)/2,'phi is the golden ratio, (sqrt(5) - 1)/2')
%
% % Now use the constant in MATLAB
%  phi
% % ans =
% %        0.618033988749895
%
% % phi can be called with a size argument, just like zeros or ones.
%  phi(1,2)
% % ans =
% %        0.618033988749895         0.618033988749895
%
% % phi has help, automatically generated, that can be accessed
% % in matlab using the standard help tool.
%  help phi
%
% % phi - User Defined Constant: The Golden Ratio
% %  
% %  phi(N) is an N-by-N matrix filled with 0.6180339887498949.
% % 
% %  phi(M,N) or phi([M,N]) is an M-by-N matrix of 0.6180339887498949.
% % 
% %  phi(M,N,P,...) or phi([M N P ...]) is an M-by-N-by-P-by-...
% %       array of 0.6180339887498949.
% % 
% %  phi(SIZE(A)) is the same size as A and all 0.6180339887498949.
% % 
% %  phi with no arguments is the scalar 0.6180339887498949.
% % 
% %  see also: ones, zeros, nan
%
% % phi is accessible in any MATLAB function without the need to access
% % a global variable list. We can also exit from matlab and still find
% % that phi exists in future sessions. Finally, we remove phi from
% % MATLAB using the delete command like this:
% delete(which(phi))
%
% see also:
%
% Author: John D'Errico
% e-mail: woodchips@rochester.rr.com
% Release Date: 6/19/2010

% simple function to remove all simple blanks from a string
% this will be used in several places.
rmb = @(str) strrep(str,' ','');

if (nargin < 2) || (nargin > 3)
  error('DEFINE:improperarguments','Must supply 2 or 3 srguments to defcon')
end

if isempty(ConstantName) || ~ischar(ConstantName)
  error('DEFINE:improperarguments','ConstantName must be a character string')
end
existence = exist(ConstantName); %#ok
if ismember(existence,[3 4 5 6 8])
  error('DEFINE:ConstantName','ConstantName already exists in MATLAB as a function or a file')
else
  % we need to check to see if that name already exists as a 
  % variable in the base workspace. If so, the function
  % will be shadowed.
  basevariable = evalin('base',['exist(''',ConstantName,''',''var'')']);
  callervariable = evalin('caller',['exist(''',ConstantName,''',''var'')']);
  
  if basevariable || callervariable
    warning('DEFINE:ConstantName', ...
    ['The string in ConstantName already represents a variable in your current', ...
    ' workspace.', sprintf('\n'), ' While the constant will be created, it will', ...
    ' be shadowed by the variable that already exists.', sprintf('\n'), ...
    ' You should delete/rename that variable to use defcon for this constant name.'])
  end
end

if (nargin < 3) || isempty(Description)
  Description = 'user defined constant';
elseif ~ischar(Description) || ~isvector(Description)
  error('DEFINE:Description','If supplied, Description must be a character vector')
end

if ischar(Value)
  % Value already is character, so treat it properly.
  cValue = ['''',Value,''''];
elseif isa(Value,'double')
  if isreal(Value)
    cValue = rmb(sprintf('%24.17g',Value));
  else
    cValue = ['complex(',rmb(sprintf('%24.17g',real(Value))), ...
      ',',rmb(sprintf('%24.17g',imag(Value))),')'];
  end
elseif isa(Value,'single')
  if isreal(Value)
    cValue = ['single(',rmb(sprintf('%16.9g',Value)),')'];
  else
    cValue = ['single(complex(',rmb(sprintf('%16.9g',real(Value))), ...
      ',',rmb(sprintf('%16.9g',imag(Value))),'))'];
  end
elseif isa(Value,'uint8')
  cValue = ['uint8(',rmb(sprintf('%3.0f',Value)),')'];
elseif isa(Value,'uint16')
  cValue = ['uint16(',rmb(sprintf('%5.0f',Value)),')'];
elseif isa(Value,'uint32')
  cValue = ['uint32(',rmb(sprintf('%10.0f',Value)),')'];
elseif isa(Value,'uint64')
  cValue = ['uint64(',rmb(sprintf('%20.0f',Value)),')'];
elseif isa(Value,'int8')
  cValue = ['int8(',rmb(sprintf('%4.0f',Value)),')'];
elseif isa(Value,'int16')
  cValue = ['int16(',rmb(sprintf('%4.0f',Value)),')'];
elseif isa(Value,'int32')
  cValue = ['int32(',rmb(sprintf('%4.0f',Value)),')'];
elseif isa(Value,'int64')
  cValue = ['int64(',rmb(sprintf('%4.0f',Value)),')'];
elseif islogical(Value)
  cValue = ['logical(',rmb(sprintf('%2.0f',Value)),')'];
end

% we will read in the template file, one line at a time,
% so open that file.
templatefid = fopen('UserConstantTemplateFile.txt','r');
% get the very first line. discard/ignore it.
mfline = fgets(templatefid); %#ok

% What is the path to the defcon fucntion? This will be used to
% save the new constant m-file.
Dpath = which('defcon.m');
[UDCdir,~] = fileparts(Dpath); 

% Write out a new m-file, in the DefinedConstants directory
% that holds our on-the-fly created function.
filename = fullfile(UDCdir,[ConstantName,'.m']);

% open the new m-file for writing
mfid = fopen(filename,'w');

% search through each line of the template file.
while 1
  % get the next line ofthe template
  mfline = fgets(templatefid);
  if isequal(mfline,-1)
    break
  end
  
  % 1. replace each instance of ?ConstantName? with the character
  % string found in ConstantName.
  mfline = strrep(mfline,'?ConstantName?',ConstantName);
  
  % 2. replace each instance of ?Description? with the character
  % string found in Description.
  mfline = strrep(mfline,'?Description?',Description);
  
  % 3. replace each instance of ?Value? with a character form for
  % the contents of cValue
  mfline = strrep(mfline,'?Value?',cValue);
  
  % dump the contents of mfline to the m-file itself
  count = fprintf(mfid,'%s',mfline); %#ok
end

% close both the template and the finalized m-file now that we are done
fclose(templatefid);
fclose(mfid);

% make sure that the constant is available
rehash path



