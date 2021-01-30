//Speed at which the text will be drawn; it's number of characters drawn every frame.
spd = 0.25;
//How many letters we should be drawing on the screen
letters = 0;
//Standby text, will be overwritten by the real text
text = "This is a test screen; it should not show.\nTesting breaks";
//Tell me how long the text will be, by counting the length of the string
length = string_length(text);
//Equals sum of text
text_current = "";
//Text box size variables
w = 0;
h = 0;
border = 10;