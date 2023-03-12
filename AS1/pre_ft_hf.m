function [FT] = pre_ft_hf(t_st, t_ed, N, w)
%PRE_FS Summary of this function goes here
%   Detailed explanation goes here
    dt = (t_ed - t_st)/N;
    FT = exp(- 1j .* w * (t_st:dt:t_ed)) * dt;
end