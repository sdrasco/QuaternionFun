# OpenGL Hello World and Quaternion Cube Rotation

These are little experiments that as I learn some basics. I'm a noob, just exploring.

## System Requirements

These programs were developed and tested on a machine with the following specifications:

- macOS version: Darwin Kernel Version 22.3.0
- Processor: ARM64_T8103

Please note that your mileage may vary, and these programs may not work on all systems. If you encounter any issues, you're own your own.

## HelloOpenGL

This program opens an OpenGL window and draws a simple triangle. It demonstrates the basics of setting up an OpenGL context and drawing basic geometry.

## HelloQuaternion

This program demonstrates how to use quaternions to rotate a cube in 3D space. It uses the GLFW and GLEW libraries for window management and OpenGL extension loading, respectively.

The cube is rendered with smooth shading and a simple texture. The camera can be moved with the arrow keys, and the cube can be rotated with the mouse.

### Building and Running

To build the programs, you can use the provided Makefile by running `make` in the root directory. The compiled binaries will be placed in the `bin` directory.

To run the programs, simply execute the binaries in the `bin` directory. The `HelloOpenGL` program does not take any arguments, while the `HelloQuaternion` program accepts an optional argument to specify the texture file to use.

### Dependencies

The programs depend on the following libraries:

- GLFW (for window management)
- GLEW (for OpenGL extension loading)

Both of these libraries are included as submodules in the `external` directory. You can use the provided Makefile to build them along with the main programs.

### License

This code is released under the MIT License. Feel free to use it for any purpose.

