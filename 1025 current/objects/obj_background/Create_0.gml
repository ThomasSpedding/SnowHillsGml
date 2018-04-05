x = obj_frame.x;
y = obj_frame.y;
depth = 0;

instance_create_layer(x, y - 90, "GUI_market", obj_itemsPlace);
instance_create_layer(x, y + 10, "GUI_market", obj_itemsPlace1);
instance_create_layer(x, y + 110, "GUI_market", obj_itemsPlace2);
instance_create_layer(x, y + 210, "GUI_market", obj_itemsPlace3);
instance_create_layer(x, y + 310, "GUI_market", obj_itemsPlace4);
instance_create_layer(x, y + 410, "GUI_market", obj_itemsPlace5);
instance_create_layer(x, y + 510, "GUI_market", obj_itemsPlace6);
