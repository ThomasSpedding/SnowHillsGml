/// scr_highScore()
ini_open("SaveState.ini");
highScore = ini_read_real("GUI", "obj_gui_control", 0)
ini_close();

