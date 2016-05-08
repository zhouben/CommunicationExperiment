function[mseq] = m_seq( polynomial )
%
% Generate M-sequence based on polynomial
% initial values are all 1
% example 1:
% As for: F(x) = 1 + x + x^2 + x^3 + x^5
% polynomial: [ 1 1 1 0 1]
% output    : 1111 1011 1000 1010 1101 0000 1100 100
%
% example 2:
% As for: F(x) = 1 + x^3 + x^5
% polynomial: [ 0 0 1 0 1]
% output    : 1111 1000 1101 1101 0100 0010 0101 100
% %
n = length( polynomial );
N = 2^n - 1;
% register=[zeros(1,n-1) 1];  % Shift register initial values are all 0, but the first one is 1
register = ones(1, n);        % Shift register initial values are all 1
mseq(1) = register(n);        % the first item of m-sequence 
for i=2:N
    register = [ mod(sum( polynomial .*register),2), register(1:n-1) ];
    mseq(i) = register(n);
end
