if (file_exists("Save.sav")) {
  var LoadFile = file_text_open_read("Save.sav");
  var LoadedRoom = file_text_read_real(LoadFile);
  file_text_readln(LoadFile);
  var LoadedAmmo = file_text_read_real(LoadFile);
  file_text_readln(LoadFile);
  var LoadedScore = file_text_read_real(LoadFile);
  file_text_close(LoadFile);
  room_goto(LoadedRoom);
  global.ammo = LoadedAmmo;
  score = LoadedScore;
}

else{
show_message("No Save Found")
}
