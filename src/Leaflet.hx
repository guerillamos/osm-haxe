package;

@:native("L")
extern class Leaflet {
    public static function map(id: String, options: Dynamic): LeafletMap;
    public static function tileLayer(url: String, options: Dynamic): LeafletTileLayer;
}

extern class LeafletMap {
    public function setView(center: Array<Float>, zoom: Int): Void;
    public function addLayer(layer: LeafletTileLayer): Void;
}

extern class LeafletTileLayer {
    public function addTo(map: LeafletMap): Void;
}
