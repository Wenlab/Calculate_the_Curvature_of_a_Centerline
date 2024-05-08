function centerline_interpolated = perform_linear_interpolation(coords, d)

% Perform linear interpolation on the smoothed centerline. To achieve that,
% you need to parameterize the curve, i.e., create x(d) and y(d) to do interpolation.
%
% The result WILL pass all the original data points.
%
% TIPS:
%   - add 0.00001*(0:length(d)-1) to make sure that each d is unique
%   - use n_curvpts + 2 to make sure we get curvature of (n_curvpts,1)
%
% Yixuan Li, 2024-05-08 
%

n_curvpts = 100;
d_max = d(end);
centerline_interpolated = interp1(d + 0.00001*(0:length(d)-1), coords', ...
    linspace(0, d_max - 1, n_curvpts + 2)); 
end