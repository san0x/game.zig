const print = @import("std").debug.print;
const rl = @import("raylib");
const rg = @import("raygui");
const x = @import("assets/assets.zig");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");
    defer rl.closeWindow(); // Close window and OpenGL context

    const texture = try rl.loadTextureFromImage(try rl.loadImageFromMemory(".png", x.TileSet));
    rl.setTargetFPS(12); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.white);

        const rect: rl.Rectangle = .{ .width = 85.0, .height = 75.0, .x = 0.0, .y = 100.0 };
        const clicked = rg.button(rect, "press me");
        if (clicked) {
            print("button is pressed", .{});
        }
        rl.drawText("Congrats! You created your first window!", 0, 0, 20, .light_gray);
        rl.drawTexture(texture, 200, 200, .white);
        //----------------------------------------------------------------------------------
    }
}
