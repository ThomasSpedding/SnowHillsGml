///scr_save()
//Save this script
ini_open("SaveState.ini");
ini_write_real("GUI", "obj_gui_control", highScore);
ini_close();

