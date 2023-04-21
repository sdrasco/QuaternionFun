# OpenGL Hello World and Quaternion Cube Rotation

These are little experiments as I learn some basics. I'm a noob, just exploring.

## System Requirements

These programs were developed and tested on a machine with the following specifications:

- macOS version: Ventura 13.2.1
- Processor: Apple M1

Please note that your mileage may vary, and these programs may not work on all systems. If you encounter any issues, you're on your own.

## HelloOpenGL

This program opens an OpenGL window, that's pretty much it.

## HelloQuaternion

This program demonstrates how to use quaternions to rotate a cube in 3D space. It uses the GLFW and GLEW libraries for window management and OpenGL extension loading, respectively.

## LitCube

This program is similar to `HelloQuaternion`, but adds lighting. It uses the same libraries as `HelloQuaternion` for window management and OpenGL extension loading.

## DragLitCube

This program is based on `LitCube` but adds the ability to drag the cube around. It uses the same libraries as `HelloQuaternion` for window management and OpenGL extension loading.

The current implementation of the mouse dragging affects the cube's position relative to its center, changing its location on the X and Y axes. However, since the cube's rotation is still hard-coded to rotate around the Y-axis, you might perceive the dragging as also affecting the rotation axis.

The rotation quaternion is created as follows:

```
	float angle = (float)glfwGetTime() * glm::radians(50.0f);
	glm::quat rotation = glm::angleAxis(angle, glm::vec3(0.0f, 1.0f, 0.0f));
```

This code specifies that the cube should rotate around the Y-axis at a rate of 50 degrees per second. The dragging does not directly affect the rotation axis, but as you move the cube around, the constant rotation around the Y-axis may give the impression of a changing rotation axis.

To make the dragging behavior more intuitive, you could consider updating the rotation axis based on the cube's position, or implementing a separate rotation control that uses mouse input. However, such modifications would require a more complex implementation.

## DragLitCat

Same as `DragLitCube` but now instead of a cube, we use a laughable approximation of a cat.  Honestly, the cube might be a better approximation.


### Building and Running

To build the programs, you can use the provided Makefile by running `make` in the root directory of the project.

After building, you can run each program by executing the respective binary in the `bin` directory.