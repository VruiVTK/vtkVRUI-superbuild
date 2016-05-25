superbuild_add_project(vtkvrui
  DEBUGGABLE
  DEFAULT_ON
  DEPENDS vrui vtk
  CMAKE_ARGS
    "-DVRUI_PKGCONFIG_DIR=<INSTALL_DIR>/lib/pkgconfig"
)
