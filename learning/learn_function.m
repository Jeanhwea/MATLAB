%% function name should be the same as the filename

% function [ret] = main(input_args)
% %MAIN Summary of this function goes here
% %   Detailed explanation goes here
%     str = 'Hello World';
%     disp(str);
% end

%% Here are some build-in parameter using for variable arguments

% nargin    : how many input arguments
% nargout   : how many output arguments
% varargin  : variable input arguments, using as varargin{1}, varargin{2}..
% varargout : variable output arguments, ....

% nargchk Validate number of input argument


%% deal with input error
% error(nargchk(2, 5, nargin));
% error('too many parameters');


