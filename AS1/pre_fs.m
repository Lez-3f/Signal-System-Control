function [FS, IFS] = pre_fs(T1, N, K)
%PRE_FS Summary of this function goes here
%   Detailed explanation goes here
    dt = T1/N;
    w1 = 2*pi / T1;
    FS = 1/N .* exp(- 1j .* (-K:K).' * (0:N-1) .* dt * w1 );
    IFS = exp( 1j .* (0:N-1).' * (-K:K) .* dt * w1);
end