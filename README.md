To build the vtkVRUI superbuild, perform the following steps:

```bash
# Clone the superbuild repository
git clone https://github.com/VruiVTK/vtkVRUI-superbuild.git

# Fetch the superbuild submodule:
cd vtkVRUI-superbuild
git submodule init
git submodule update
cd ..

# Configure and build in a clean directory
mkdir vtkVRUI-superbuild-build
cd vtkVRUI-superbuild-build
cmake ../vtkVRUI-superbuild
make
```