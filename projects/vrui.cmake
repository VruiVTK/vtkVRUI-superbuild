set(patchDir "${CMAKE_SOURCE_DIR}/projects/patches")

set(debugFlag)
if("${CMAKE_BUILD_TYPE}" STREQUAL "Debug")
  set(debugFlag "DEBUG=1")
endif()

# Since VRUI's build system consists of handwritten Makefiles, we need make:
find_program(VRUI_MAKE_COMMAND make)
if(NOT VRUI_MAKE_COMMAND)
  message(FATAL_ERROR
    "Build tool 'make' not found on system (needed for VRUI).")
endif()

set(buildCommand
  "${VRUI_MAKE_COMMAND}"
    ${debugFlag}
    "INSTALLDIR=<INSTALL_DIR>"
    "LIBINSTALLDIR=<INSTALL_DIR>/lib"
    "EXECUTABLEINSTALLDIR=<INSTALL_DIR>/bin"
    "PKGCONFIGINSTALLDIR=<INSTALL_DIR>/lib/pkgconfig"
)

superbuild_add_project(vrui
  BUILD_IN_SOURCE 1
  DEFAULT_ON

  UPDATE_COMMAND ""

  PATCH_COMMAND
    "${CMAKE_COMMAND}" -E copy
    "${patchDir}/VRUI_src.GLMotif.ListBox.h"
    "<SOURCE_DIR>/GLMotif/ListBox.h"

  CONFIGURE_COMMAND ""

  BUILD_COMMAND "${buildCommand}"

  INSTALL_COMMAND "${buildCommand}" install
)
