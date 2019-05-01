--  Copyright (c) 2019 Maxim Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
--  License-Filename: LICENSE
-------------------------------------------------------------

with Program.Elements.Type_Definitions;
with Program.Tokens;
with Program.Elements.Simple_Expression_Ranges;

package Program.Elements.Signed_Integer_Types is

   pragma Pure (Program.Elements.Signed_Integer_Types);

   type Signed_Integer_Type is
     limited interface and Program.Elements.Type_Definitions.Type_Definition;

   type Signed_Integer_Type_Access is access all Signed_Integer_Type'Class
     with Storage_Size => 0;

   not overriding function Range_Token
    (Self : Signed_Integer_Type)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Integer_Constraint
    (Self : Signed_Integer_Type)
      return Program.Elements.Simple_Expression_Ranges
          .Simple_Expression_Range_Access is abstract;

end Program.Elements.Signed_Integer_Types;