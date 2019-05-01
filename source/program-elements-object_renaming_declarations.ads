--  Copyright (c) 2019 Maxim Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
--  License-Filename: LICENSE
-------------------------------------------------------------

with Program.Elements.Declarations;
with Program.Tokens;
with Program.Elements.Expressions;

package Program.Elements.Object_Renaming_Declarations is

   pragma Pure (Program.Elements.Object_Renaming_Declarations);

   type Object_Renaming_Declaration is
     limited interface and Program.Elements.Declarations.Declaration;

   type Object_Renaming_Declaration_Access is
     access all Object_Renaming_Declaration'Class with Storage_Size => 0;

   not overriding function Colon_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Not_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Null_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Object_Subtype
    (Self : Object_Renaming_Declaration)
      return Program.Elements.Element_Access is abstract;

   not overriding function Renames_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Renamed_Entity
    (Self : Object_Renaming_Declaration)
      return Program.Elements.Expressions.Expression_Access is abstract;

   not overriding function With_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Semicolon_Token
    (Self : Object_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

end Program.Elements.Object_Renaming_Declarations;