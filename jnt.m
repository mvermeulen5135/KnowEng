

function Joint = jnt(F)

Joint = struct('var', [], 'card', [], 'val', []); % Returns empty factor. Change this
for i = 1:length(F),

Joint = FactorProduct(Joint,F(i));

end;

end;