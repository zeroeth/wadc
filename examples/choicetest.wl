#"standard.h"

-- random hallway, press ctrl-R multiple times

main {
  thing
  movestep(-32,-32)
  for(1,32,room2)      
}

room2 { room({ 32 | 64 | 96 | 128 | 160 }) }

room(x) {

  wall({ "ASHWALL6" | "BIGBRIK1" | "BRICK10" | "BRICK12" | "BRONZE1" })
  floor({ "FLOOR4_5" | "TLITE6_5" | "FLAT10" | "NUKAGE1" | "DEM1_6" })
  ceil({ "SLIME14" | "FLAT5_1" | "FLAT3" })

  box({ 0 | 16 },                     -- floor
      { 128 | 144 | 160 | 176 },      -- ceiling
      { 64 | 96 | 128 | 160 | 192 },  -- light
      x,                              -- x
      { 160 | 192 | 224 | 256 })      -- y

  move(x)

  step(0,{ 64 | 32 | -32 | -64 })

}
