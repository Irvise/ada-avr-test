procedure Flash_Led is
   type Ticker is range 1..2**16;
   Tick : Ticker := 1;

   type U8 is mod 2**8;

   DDRB : U8 with
     Address => 16#24#;
   -- Data register. 1 Indicates output mode.

   PORTB : U8 with
     Address => 16#25#;
   -- Port mode. 1 Indicates high output.

begin

   -- Initialise DDRB
   DDRB := 16#FF#;
   -- Set PORTB high
   PORTB := 16#FF#;

   loop
      for I in Ticker'Range loop
         Tick := Tick + 1;
         null;
      end loop;
      Tick := 1;

      PORTB := 16#FF#;
      for I in Ticker'Range loop
         Tick := Tick + 1;
         null;
      end loop;
      PORTB := 16#00#;
      Tick := 1;
   end loop;
end Flash_Led;
