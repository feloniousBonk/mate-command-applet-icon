### TODO
**In Progress**
- [ ] _TBD_

**Completed**
- [x] Clean up some possibly redundant code:
    - uneeded calls to `get_icon_path` in callback function `icon_name_changed`. 
    - uneeded call to `get_icon_path` in function `settings_icon_changed`.
    - filename is set to filechooser when preference dialog opened, then `gtk_file_chooser_set_file_name` is called again in function `settings_icon_changed` after new file selection. this is redundant as filechooser will be updated if you open prefence dialog again. 
    - if no need to set filename to filechooser in `settings_icon_changed`, then `command_applet->icon_chooser` can become local object in `command_settings_callback` function.
- [x] Set filter to filechooser so file picker only shows image files
- [x] Add spinbutton to let user change icon size between 16, 24, 32, 48 px.
