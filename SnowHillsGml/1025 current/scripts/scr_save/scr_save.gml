///scr_save()

ini_open("SaveState.ini");
ini_write_real("GUI", "obj_gui_control", highScore);
ini_close();

