function [FT, IFT] = pre_ft(t_st, t_ed, N, w_st, w_ed, K)
%PRE_FS Summary of this function goes here
%   Detailed explanation goes here
    dt = (t_ed - t_st)/N;
    dw = (w_ed - w_st)/K;
    FT = exp(- 1j .* (w_st:dw:w_ed).' * (t_st:dt:t_ed)) * dt;
    IFT = exp( 1j .* (t_st:dt:t_ed).' * (w_st:dw:w_ed)) * dw / (2*pi);
end