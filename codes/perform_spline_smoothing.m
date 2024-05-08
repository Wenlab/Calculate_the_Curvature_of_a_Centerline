function centerline_smoothed = perform_spline_smoothing(coords, d)

% Perform cubic spline interpolation on a set of coordinates. To achieve that,
% you need to parameterize the curve, i.e., create x(d) and y(d) to do interpolation.
%
% The result WILL NOT pass all the original data points.
%
% P.S.: this method can remove noise.
%
% Yixuan Li, 2024-05-08 
%

spline_p = 0.0005;
f = csaps(d, coords, spline_p);
centerline_smoothed = fnval(f, d);
end