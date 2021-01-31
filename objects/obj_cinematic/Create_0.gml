//Where does the viewport start
xpos = 1280;
//Alpha of the black rectangle over the screen, to fade to/from black
a = 1;
//Used like a boolean, to determine whether we're fading in or out
fadeout = 0;
//Represents the line of text at the bottom
str = "";
//To contain the whole string we're typing out on the screen
print = "";
//How many letters of the string should we put into print
l = 0;
//Determines which string in an array is next to draw
next = 0;
//Decide whether someone has held space long enough to skip the cutscene
holdspace = 0;
//What's the most alpha we should fade out towards
max_fadeout = 0.25;

strings[0] = "Son, you come from a long line of maps.\nLike you, I once ventured out into the world.";
strings[1] = "Go forth, Mapwell, and help adventurers in need!";
strings[2] = "Help guide them to the treasures they want to possess\nBut beware of the traps and enemies that surround them!";