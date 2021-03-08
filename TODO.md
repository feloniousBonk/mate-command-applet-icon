### TODO
**In Progress**
- [ ] clean up some possibly redundant code:
    - uneeded calls to get icon path in callback function icon_name_changed. 
    - uneeded call to get icon path in function settings_icon_changed.
    - filename is set to filechooser when preference dialog opened, then gtk_file_chooser_set_file_name is called again in function settings_icon_changed after new file selection. this is redundant as filechooser will be updated if you open prefence dialog again. 

**Completed**
- [x] Set filter to filechooser so file picker only shows image files
- [x] Make icon size autoscale to fit size of panel or add spinbutton to let user change icon size between 16, 24, 32, 48 px.
