const rl = @import("raylib");
const std = @import("std");

pub const TileSet = @embedFile("MainLev2.0.png");
pub const Image = rl.loadImageFromMemory(".png", TileSet) catch @compileError("asdasd");
// pub const TextureMainLev2 = rl.loadTextureFromImage(image) catch @compileError("");
