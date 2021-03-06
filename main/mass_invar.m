%% Computation of the mass invariant
function MI = mass_invar(ci,MMI_sign)

size_MMI_sign = size(MMI_sign);
%%% Computation of the mass invariant
b = [];
for i = 1:size_MMI_sign(1)
    for j = 1: size_MMI_sign(2)
        b{i,j} = [MMI_sign{i,j}*ci{j}];
    end
end
MI = [];
for i = 1:size_MMI_sign(1)
	  MI = concat_row_even_if_empty (MI,{fplus({b{i,:}})}) ;
end
