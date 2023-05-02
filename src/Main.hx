package;

import js.Browser;
import js.html.DivElement;
import js.html.Event;

class Main {
    public function new() {
        // Ensure the Leaflet library is fully loaded before initializing the map
        Browser.window.onload = initMap;
    }

    private function initMap(event: Event): Void {
        // Create a div for the map
        var mapDiv: DivElement = Browser.document.createDivElement();
        mapDiv.id = "map";
        mapDiv.style.width = "100%";
        mapDiv.style.height = "100%";
        Browser.document.body.appendChild(mapDiv);

        // Initialize the map
        var map = Leaflet.map("map", { center: [51.505, -0.09], zoom: 13 });
        var osmLayer = Leaflet.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        });
        osmLayer.addTo(map);
    }

    public static function main(): Void {
        new Main();
    }
}
