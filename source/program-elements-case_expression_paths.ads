--  Copyright (c) 2019 Maxim Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
--  License-Filename: LICENSE
-------------------------------------------------------------

with Program.Elements.Paths;
with Program.Tokens;
with Program.Elements.Expressions;

package Program.Elements.Case_Expression_Paths is

   pragma Pure (Program.Elements.Case_Expression_Paths);

   type Case_Expression_Path is
     limited interface and Program.Elements.Paths.Path;

   type Case_Expression_Path_Access is access all Case_Expression_Path'Class
     with Storage_Size => 0;

   not overriding function When_Token
    (Self : Case_Expression_Path)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Arrow_Token
    (Self : Case_Expression_Path)
      return Program.Tokens.Token_Access is abstract;

   not overriding function Case_Expression
    (Self : Case_Expression_Path)
      return Program.Elements.Expressions.Expression_Access is abstract;

end Program.Elements.Case_Expression_Paths;
