# OpenGL Hello World and Quaternion Cube Rotation

These are little experiments as I learn some basics. I'm a noob, just exploring.

## System Requirements

These programs were developed and tested on a machine with the following specifications:

- macOS version: Darwin Kernel Version 22.3.0
- Processor: ARM64_T8103

Please note that your mileage may vary, and these programs may not work on all systems. If you encounter any issues, you're on your own.

## HelloOpenGL

This program opens an OpenGL window, that's pretty much it.

## HelloQuaternion

This program demonstrates how to use quaternions to rotate a cube in 3D space. It uses the GLFW and GLEW libraries for window management and OpenGL extension loading, respectively.

## LitCube

This program is similar to `HelloQuaternion`, but adds lighting. It uses the same libraries as `HelloQuaternion` for window management and OpenGL extension loading.

### Building and Running

To build the programs, you can use the provided Makefile by running `make` in the root directory of the project.

After building, you can run each program by executing the respective binary in the `bin` directory:

- For HelloOpenGL: `./bin/HelloOpenGL`
- For HelloQuaternion: `./bin/HelloQuaternion`
- For LitCube: `./bin/LitCube`