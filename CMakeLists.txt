cmake_minimum_required(VERSION 3.1)

project(vtkvrui-superbuild)

function(superbuild_find_projects var)
  set(projects
    geometryviewer
    mooseviewer
    tbb
    volumeviewer
    vrui
    vtk
    vtkvrui
  )

  set("${var}" ${projects} PARENT_SCOPE)
endfunction()

list(APPEND superbuild_project_roots
  "${CMAKE_CURRENT_LIST_DIR}/projects")
list(APPEND superbuild_version_files
  "${CMAKE_CURRENT_LIST_DIR}/versions.cmake")

add_subdirectory(superbuild)
