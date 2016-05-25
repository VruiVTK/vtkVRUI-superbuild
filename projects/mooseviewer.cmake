superbuild_add_project(mooseviewer
  DEBUGGABLE
  DEFAULT_ON
  DEPENDS vrui vtk vtkvrui
  CMAKE_ARGS
    "-DVRUI_PKGCONFIG_DIR=<INSTALL_DIR>/lib/pkgconfig"
)
