--[[

This macro colors red and white

]]

function main ()
 Selection_Clear();
 --chainA=Search_GetResidues(" > A > ");
 --Selection_Change("add", chainA);
 --Selection_Change("remove", Search_GetResidues(">> HOH"));
 --total = List_Length(Selection_GetAtoms(chain));
   residues = List_Iterator(Chain_GetResidues(chain))
   for residue in residues do
    if Residue_GetName(residue) ~= "HOH" then
     print("HOH")
    else
     Selection_Clear();
     Selection_Change("add", residue);
     count=count+1;
     if (count < 30) then
      Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
     else
      Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
     end
    end
   end
   return total .. "residues"
end
