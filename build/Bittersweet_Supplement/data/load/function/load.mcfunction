tellraw @a {text: "Thank you for taking your Bittersweet Supplement!", color: "#c6b3c8"}
tellraw @a {text: "Lost? Check the Advancement Menu!", color: "#a990a9"}
tellraw @a {text: "Bittersweet Supplement for Java 26.2 by phantomfeign", color: "#87658a"}
forceload add -1 -1 1 1
advancement revoke @a through bswt:temp/root
function load:scoreboard
function load:gamerule
schedule function ticking_functions:tick_1t/call 1
schedule function ticking_functions:tick_1s/call 2
