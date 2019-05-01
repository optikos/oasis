--  Copyright (c) 2019 Maxim Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
--  License-Filename: LICENSE
-------------------------------------------------------------

with Program.Elements.Declarations;
with Program.Tokens;
with Program.Elements.Defining_Names;
with Program.Elements.Expressions;

package Program.Elements.Generic_Procedure_Renaming_Declarations is

   pragma Pure (Program.Elements.Generic_Procedure_Renaming_Declarations);

   type Generic_Procedure_Renaming_Declaration is
     limited interface and Program.Elements.Declarations.Declaration;

   type Generic_Procedure_Renaming_Declaration_Access is
     access all Generic_Procedure_Renaming_Declaration'Class
     with Storage_Size => 0;

   not overriding function Generic_Token
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Procedure_Token
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Name
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Elements.Defining_Names.Defining_Name_Access is abstract;

   not overriding function Renames_Token
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Renamed_Entity
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Elements.Expressions.Expression_Access is abstract;

   not overriding function With_Token
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Semicolon_Token
    (Self : Generic_Procedure_Renaming_Declaration)
      return Program.Tokens.Token_Access is abstract;

end Program.Elements.Generic_Procedure_Renaming_Declarations;