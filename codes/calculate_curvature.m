function curvature = calculate_curvature(coords)

% Calculate curvature using the angle difference method.
%
% TIPS:
%   - Here, we use atan2 with unwrap. If u use atan, u have to use
%   unwrap(,pi/2)
%
% Yixuan Li, 2024-05-08 
%

df = diff(coords, 1, 1);
theta = atan2(df(:,2), df(:,1));
curvature = diff(unwrap(theta), 1);

end