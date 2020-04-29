function loadMap() {
	var kenya = {lat:-0.023559,lng:37.9061928};
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 5,
      center: kenya
    });

    var marker = new google.maps.Marker({
      position: kenya,
      map: map
    });

    var allData = JSON.parse(document.getElementById('allData').innerHTML);
    showAllColleges(allData)
}

function showAllColleges(allData) {
  var infoWind = new google.maps.InfoWindow;
	Array.prototype.forEach.call(allData, function(data){

    var content = document.createElement('div');
    var strong = document.createElement('strong');
    
    strong.textContent = data.activity;
    content.appendChild(strong);


		var marker = new google.maps.Marker({
	      position: new google.maps.LatLng(data.latitude, data.longitude),
	      map: map
	    });

     marker.addListener('click', function(){
        infoWind.setContent(content);
        infoWind.open(map, marker);
      })
	})
}

