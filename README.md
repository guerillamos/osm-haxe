# Haxe + OpenStreetMap Example

This project demonstrates how to use Haxe to create an interactive map using the OpenStreetMap and Leaflet library.

## Project Structure

- `src/` - Haxe source code folder
    - `Main.hx` - Main Haxe file
    - `Leaflet.hx` - Leaflet extern definitions
- `index.html` - HTML file to display the interactive map
- `build.hxml` - Haxe build configuration file

## Setup

1. Install Haxe (https://haxe.org/download/)
2. Pull this repo down and cd into the folder
3. Save the provided `Main.hx`, `Leaflet.hx`, `index.html`, and `build.hxml` files in their respective locations in the project folder
4. Run `haxe build.hxml` in the terminal/command prompt to compile the project
5. Open `index.html` in a web browser to view the interactive map

## How It Works

This example uses Haxe to create a simple web application that displays an interactive OpenStreetMap using the Leaflet library. The `Leaflet.hx` file contains extern definitions for Leaflet's API, allowing you to use the library in Haxe code. The `Main.hx` file initializes the map and adds a tile layer to display the map data.

When you compile the project with `haxe build.hxml`, it generates a JavaScript file (`main.js`) that can be included in the `index.html` file. The `index.html` file loads the Leaflet library and its stylesheet from a CDN, sets up the container for the map, and includes the generated `main.js` file to display the interactive map in the browser.
