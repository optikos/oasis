--  Copyright (c) 2019 Maxim Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
--  License-Filename: LICENSE
-------------------------------------------------------------

with Program.Elements.Type_Definitions;
with Program.Elements.Formal_Type_Definitions;
with Program.Tokens;
with Program.Elements.Component_Definitions;

package Program.Elements.Constrained_Array_Types is

   pragma Pure (Program.Elements.Constrained_Array_Types);

   type Constrained_Array_Type is
     limited interface and Program.Elements.Type_Definitions.Type_Definition
       and Program.Elements.Formal_Type_Definitions.Formal_Type_Definition;

   type Constrained_Array_Type_Access is
     access all Constrained_Array_Type'Class with Storage_Size => 0;

   not overriding function Array_Token
    (Self : Constrained_Array_Type)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Left_Bracket_Token
    (Self : Constrained_Array_Type)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Right_Bracket_Token
    (Self : Constrained_Array_Type)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Of_Token
    (Self : Constrained_Array_Type)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Component_Definition
    (Self : Constrained_Array_Type)
      return Program.Elements.Component_Definitions.Component_Definition_Access
     is abstract;

end Program.Elements.Constrained_Array_Types;
