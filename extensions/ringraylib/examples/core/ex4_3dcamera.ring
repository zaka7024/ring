/*******************************************************************************************
*
*   raylib [core] example - Initialize 3d camera mode
*
*   This example has been created using raylib 1.0 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2014 Ramon Santamaria (@raysan5)
*
********************************************************************************************/
#===================================================================#
# Based on Original Sample from RayLib (https://www.raylib.com/)
# Ported to RingRayLib by Ring Team
#===================================================================#

load "raylib.ring"

screenWidth = 800
screenHeight = 450

InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d camera mode")

camera = Camera3D(
	0, 10, 10,  		// Camera position
        0, 0, 0 ,   		// Camera looking at point
	0, 1, 0,    		// Camera up vector (rotation towards target)
	45,        		// Camera field-of-view Y
    	CAMERA_PERSPECTIVE)	// Camera mode type

cubePosition = Vector3(0, 0, 0)

SetTargetFPS(60)           
    
while !WindowShouldClose()

        BeginDrawing()

            ClearBackground(RAYWHITE)

            BeginMode3D(camera)

                DrawCube(cubePosition, 2, 2, 2, RED)
                DrawCubeWires(cubePosition, 2, 2, 2, MAROON)

                DrawGrid(10, 1)

            EndMode3D()

            DrawText("Welcome to the third dimension!", 10, 40, 20, DARKGRAY)

            DrawFPS(10, 10)

        EndDrawing()

end 

CloseWindow()
