

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

//Enum basically says that these items can be referred to by name. It also sets them into constants.
//So instead of saying TRANS_MODE = 1 for off and having to remember the number, you can reference TRANS_MODE.OFF
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;