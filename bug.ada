```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array
begin
   for I in My_Arr'Range loop
      My_Arr(I) := My_Arr(I) + 1;
      if My_Arr(I) > 5 then
         exit;
      end if;
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("An error occurred.");
end Example;
```