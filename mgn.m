function M = mgn(V, F, E)
  
  Joint = ComputeJointDistribution(F);
  
  O = ObserveEvidence(Joint, E);
  O.val = nonzeros(O.val)/sum(O.val);
  
  [dummy, Map] = ismember(V,O.var);
  
  M = struct('var', V, 'card', O.card(Map), 'val', O.val');
  
  
endfunction
