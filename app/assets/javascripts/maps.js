let map;
const opcion = 'https://drive.google.com/uc?id=1Y5EUjvRZ4fIp8VEPPwlOMiu2JF7OJipq'
function initMap() {
    arbol = { lat: gon.latitud, lng: gon.longitud }
    map = new google.maps.Map(document.getElementById("map"), {
        center: arbol,
        zoom: 13,
    });
    const marker = new google.maps.Marker({
        position: arbol,
        map: map,
        icon: opcion
    });

}
