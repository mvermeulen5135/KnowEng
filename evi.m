
function F = evi(F, E)

for i = 1:size(E, 1),
    v = E(i, 1); % variable
    x = E(i, 2); % value

    for j = 1:length(F),
		    
        indx = find(F(j).var == v);

        if (~isempty(indx)),
          
         C=F(j);
         
		  	   for k = 1:length(C.val),
             
            B = IndexToAssignment(k,C.card);
            
            if B(indx) ~= x,
              
              C = SetValueOfAssignment(C,B,0);
             
            endif;
            
           endfor;	
           
         F(j)=C;
         
      endif;
      
    endfor;
 endfor;
 
 end;