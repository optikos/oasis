with Interfaces;

generic
   type Object is limited private;
   type Object_Access is access all Object;
package Program.Relative_Access_Types is

   type Relative_Access is limited private;

   function "+" (Value : Object_Access) return Relative_Access with Inline;
   function "-" (Value : Relative_Access) return Object_Access with Inline;

private
   type Relative_Access is new Interfaces.Integer_32;

end Program.Relative_Access_Types;
