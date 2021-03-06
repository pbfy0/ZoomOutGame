// Generated by CoffeeScript 1.6.3
var $, choose_place, clicked, czoom, goto_place, init_set, initialize, l, map, nplace, random_below, random_item, set, zoomdir, zoomed;

map = void 0;

nplace = void 0;

zoomdir = null;

czoom = void 0;

google.maps.visualRefresh = true;

$ = document.getElementById.bind(document);

l = console.log.bind(console);

random_below = function(n) {
  return Math.floor(Math.random() * n);
};

random_item = function(list) {
  if (list.length != null) {
    return list[random_below(list.length)];
  } else {
    return list[random_item(Object.keys(list))];
  }
};

goto_place = function(place) {
  map.setCenter(place.center);
  map.setZoom(place.zoom);
  return nplace = place;
};

set = places.world_big_islands;

choose_place = function() {
  goto_place(random_item(set));
  czoom = map.getZoom();
  return zoomdir = null;
};

clicked = function(place) {
  alert(place === nplace ? "Yes, it's " + nplace.name + ". " + (10 - Math.abs(nplace.zoom - czoom)) + " points" : "No, it's " + nplace.name + ", not " + place.name);
  return choose_place();
};

zoomed = function(level) {
  if (czoom == null) {
    czoom = level;
  }
  if (czoom === level) {
    return;
  }
  if (zoomdir == null) {
    zoomdir = level - czoom;
  }
  if (level - czoom !== zoomdir) {
    return map.setZoom(czoom);
  } else {
    return czoom = level;
  }
};

init_set = function() {
  var el, v, _i, _len, _results;
  el = $('answers');
  _results = [];
  for (_i = 0, _len = set.length; _i < _len; _i++) {
    v = set[_i];
    _results.push((function(v) {
      var nel;
      console.log(v);
      nel = document.createElement('a');
      nel.href = '#';
      nel.innerText = v.name;
      nel.addEventListener('click', function() {
        return clicked(v);
      });
      return el.appendChild(nel);
    })(v));
  }
  return _results;
};

initialize = function() {
  var opts;
  opts = {
    center: new google.maps.LatLng(0, 0),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.SATELLITE,
    disableDefaultUI: true,
    zoomControl: true,
    zoomControlOptions: {
      style: google.maps.ZoomControlStyle.SMALL
    }
  };
  window.map_ = map = new google.maps.Map($('map-canvas'), opts);
  google.maps.event.addListener(map, 'zoom_changed', function() {
    return zoomed(map.getZoom());
  });
  init_set();
  return choose_place();
};

document.addEventListener('DOMContentLoaded', initialize);
