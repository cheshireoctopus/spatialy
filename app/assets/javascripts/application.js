// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


(function() {
  window.onload = function () {

    var options = {
      zoom: 12,
      center: new google.maps.LatLng(40.7127, -74.0059),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById('map'), options);

    // Create a LatLngBounds object
    var bounds = new google.maps.LatLngBounds();

    //Declare a variable that will hold the InfoWindow object
    var infowindow;

    //Loop thru the places array
    for (var i = 0; i < $places.length; i++) {

      //Adding the markers
        var marker = new google.maps.Marker({
          position: $places[i],
          map: map,
        });

        //Creating the event listener. It now has access to the values of i and marker as they were during its creation
        (function(i, marker) {

            google.maps.event.addListener(marker, 'click', function() {
              //Check to see if infowindow - declared a global var - already exists
              if (!infowindow) {
                // Create a new InfoWindow object
                infowindow = new google.maps.InfoWindow();
              }

              // Setting the conent of the Infowindow
              infowindow.setContent('Place number ' + i);

              //Tying the InfoWindow to the marker
              infowindow.open(map, marker);

              });


         })(i, marker);

        //Extending the bounds object with each LatLng
        //bounds.extend($places[i]);

      } //end loop

      //Adjusting the map to new bounding box
      //map.fitBounds(bounds);




      //CHANGE LOCATION
       document.getElementById('changeNY').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(40.7127, -74.0059),
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

       document.getElementById('changeLA').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(34.0536, -118.243),
                zoom: 10,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

       document.getElementById('changeSF').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(37.7792, -122.4191),
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

       document.getElementById('changeChicago').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(41.8839, -87.6316),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

          document.getElementById('changeMoscow').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(55.7500, 37.6167),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

          document.getElementById('changeLondon').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(51.5072, -0.1275),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

           document.getElementById('changeParis').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(48.8567, 2.3508),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

           document.getElementById('changeTokyo').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(35.6895, 139.6917),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

          document.getElementById('changeShanghai').onclick = function () {
            // map.setCenter(new google.maps.LatLng(40.6891, -74.0445));
            // map.setZoom(17);
            // map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
            map.setOptions({
                center: new google.maps.LatLng(31.2000, 121.5000),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
          };

      //END CHANGE LOCATION

  }; //end function

})();




