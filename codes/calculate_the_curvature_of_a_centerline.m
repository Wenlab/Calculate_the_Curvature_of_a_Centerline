function curvature_of_centerline = calculate_the_curvature_of_a_centerline(centerline)

% Calculates the curvature of a centerline.
%
% Input: a 2x100 numerical array where rows are x and y coordinates.
% Output: a 100x1 numerical array of curvature values.
%
% P.S.: rescale your input to make sure they have at least the order 
% of 10, or there will be some issues when apply spline interpolation. 
%
% Yixuan Li, 2024-05-08.
%
% yixuanli@mail.ustc.edu.cn
%

%% Calculate distances along the centerline
d = calculate_distances(centerline);

%% Perform spline smooth
centerline_smoothed = perform_spline_smoothing(centerline, d);
d_smoothed = calculate_distances(centerline_smoothed);

%% Perform linear interpolation
centerline_interpolated = perform_linear_interpolation(centerline_smoothed, d_smoothed);
centerline_interpolated = centerline_interpolated';

%% Calculate curvature from the interpolated centerline
curvature_of_centerline = calculate_curvature(centerline_interpolated');

end