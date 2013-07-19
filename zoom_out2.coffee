map = undefined
nplace = undefined
zoomdir = null
czoom = undefined

google.maps.visualRefresh = yes
$ = document.getElementById.bind document
l = console.log.bind(console)

random_below = (n) ->
 Math.floor(Math.random() * n)

random_item = (list) ->
 if list.length?
  list[random_below(list.length)]
 else
  list[random_item(Object.keys(list))]

goto_place = (place) ->
 map.setCenter place.center
 map.setZoom place.zoom
 nplace = place

set = places.world_big_islands

choose_place = () ->
 goto_place(random_item(set))
 czoom = map.getZoom()
 zoomdir = null

clicked = (place) ->
 alert(if place == nplace then "Yes, it's #{nplace.name}. #{10 - Math.abs(nplace.zoom - czoom)} points" else "No, it's #{nplace.name}, not #{place.name}")
 choose_place()

zoomed = (level) ->
 czoom ?= level
 if czoom == level
  return
 zoomdir ?= level - czoom#level > czoom 1 else -1
 if level - czoom != zoomdir
  map.setZoom(czoom)
 else
  czoom = level

init_set = () ->
 el = $('answers')
 for v in set
  do (v) ->
   console.log(v)
   nel = document.createElement('a')
   nel.href = '#'
   nel.innerText = v.name
   nel.addEventListener('click', () -> clicked(v))
   el.appendChild(nel)

initialize = () ->
 opts =
  center: new google.maps.LatLng 0, 0
  zoom: 8
  mapTypeId: google.maps.MapTypeId.SATELLITE
#  scrollwheel: false
#  disableDoubleClickZoom: true
  disableDefaultUI: true
  zoomControl: true
  zoomControlOptions: {style: google.maps.ZoomControlStyle.SMALL}
 window.map_ = map = new google.maps.Map $('map-canvas'), opts
 google.maps.event.addListener(map, 'zoom_changed', () -> zoomed(map.getZoom()))
 
 init_set()
 choose_place()
document.addEventListener('DOMContentLoaded', initialize)
