```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array
begin
   for I in My_Arr'Range loop
      begin
         My_Arr(I) := My_Arr(I) + 1;
         if My_Arr(I) > 5 then
            exit;
         end if;
      exception
         when Constraint_Error =>
            Ada.Text_IO.Put_Line("Index out of bounds error!");
            return; --Or handle appropriately
      end;
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
end Example;
```