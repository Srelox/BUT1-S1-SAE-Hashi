pragma Ada_2012;
package body Ile is


   -------------------
   -- ConstruireIle --
   -------------------

   function ConstruireIle (v : in Integer) return Type_Ile is
      ile : Type_Ile;
   begin
      if v <= 0 or v > VALEUR_MAX then
         raise VALEUR_ILE_INVALIDE;
      end if;
      ile.v := v;
      return ile;
   end ConstruireIle;

   -------------------
   -- ObtenirValeur --
   -------------------

   function ObtenirValeur (i : in Type_Ile) return Integer is
   begin
      return i.v;
   end ObtenirValeur;

   --------------------
   -- estIleComplete --
   --------------------

   function estIleComplete (i : in Type_Ile) return Boolean is
   begin
      return i.v = 0;
   end estIleComplete;

   -----------------
   -- modifierIle --
   -----------------

   function modifierIle (i : in Type_Ile; p : in Integer) return type_ile is
      ile : Type_Ile;
   begin
      if p < 1 or p > 2 then
         raise VALEUR_PONT_INVALIDE;
      elsif i.v - p < 0 then
         raise PONT_IMPOSSIBLE;
      end if;
      ile.v := i.v - p;
      return ile;
   end modifierIle;

end Ile;
