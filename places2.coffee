llg = (l) ->
 new google.maps.LatLng(l[0], l[1])

class Place
 constructor: (obj) ->
  @name = obj.name
  @zoom = obj.zoom ? 8
  @relprob = obj.relprob ? 4
  @age = obj.age ? 10
  @last_correct
  @center = llg(obj.center)
  @marker = if obj.marker? then llg(obj.center) else @center
  @radius = obj.radius ? 8000
places = {
world_big_islands: [
 new Place({
  name: 'Greenland'
  zoom: 5
  center: [73, -36.5]
 }),
 new Place({
  name: 'New Guinea'
  zoom: 7
  center: [-5.54, 141.28]
 }),
 new Place({
  name: 'Borneo'
  zoom: 7
  center: [0.74, 113.85]
 }),
 new Place({
  name: 'Madagascar'
  zoom: 7
  center: [-19, 46.54]
 }),
 new Place({
  name: 'Baffin Island'
  zoom: 6
  center: [69.9, -72.95]
 }),
 new Place({
  name: 'Sumatra'
  zoom: 7
  center: [-1.1, 102.04]
 }),
 new Place({
  name: 'Honshu'
  zoom: 7
  center: [36.92, 138.02]
 }),
 new Place({
  name: 'Victoria Island'
  zoom: 7
  center: [71.05, -109.51]
 }),
 new Place({
  name: 'Great Britain'
  zoom: 7
  center: [54.73, -2]
 }),
 new Place({
  name: 'Ellesmere Island'
  zoom: 6
  center: [80.44, -77.87]
 }),
 new Place({
  name: 'Sulawesi'
  zoom: 8
  center: [-1.85, 121.29]
 }),
 new Place({
  name: 'South Island, New Zealand'
  zoom: 8
  center: [-43.77, 170.73]
 }),
 new Place({
  name: 'Java'
  zoom: 8
  center: [-7.39, 110.39]
 }),
 new Place({
  name: 'North Island, New Zealand'
  zoom: 8
  center: [-38.48, 175.87]
 }),
 new Place({
  name: 'Luzon'
  zoom: 8
  center: [15.51, 121.1]
 }),
 new Place({
  name: 'Newfoundland'
  zoom: 8
  center: [48.75, -55.81]
 }),
 new Place({
  name: 'Cuba'
  zoom: 8
  center: [21.77, -79.5]
 }),
 new Place({
  name: 'Iceland'
  zoom: 8
  center: [64.92, -18.41]
 }),
 new Place({
  name: 'Mindanao'
  zoom: 8
  center: [7.68, 124.47]
 }),
 new Place({
  name: 'Ireland'
  zoom: 8
  center: [53.37, -7.91]
 })
],

peninsulas: [
 new Place({
  name: 'India'
  zoom: 7
  center: [16.96, 77.61]
 }),
 new Place({
  name: 'Iberia'
  zoom: 7
  center: [40.5, -4.57]
 }),
 new Place({
  name: 'Korea'
  zoom: 8
  center: [36.28, 127.79]
 }),
 new Place({
  name: 'Italy'
  zoom: 8
  center: [42.22, 13.1]
 }),
 new Place({
  name: 'Arabia'
  zoom: 7
  center: [21.77, 47.11]
 }),
 new Place({
  name: 'Malay peninsula'
  zoom: 7
  center: [5.35, 101.47]
 }),
 new Place({
  name: 'Scandinavia'
  zoom: 7
  center: [62.24, 13.49]
 }),
 new Place({
  name: 'Florida'
  zoom: 9
  center: [27.6, -81.47]
 }),
 new Place({
  name: 'Peloponnese'
  zoom: 9
  center: [37.5, 22.15]
 }),
 new Place({
  name: 'Shandong'
  zoom: 9
  center: [37.15, 120.76]
 }),
 new Place({
  name: 'Antarctic peninsula'
  zoom: 7
  center: [-70, -66.45]
 }),
 new Place({
  name: 'Yucatan'
  zoom: 8
  center: [19.95, -89.03]
 }),
 new Place({
  name: 'Liaodong peninsula'
  zoom: 9
  center: [39.92, 122.45]
 }),
 new Place({
  name: 'Leizhou peninsula'
  zoom: 10
  center: [20.79, 110.02]
 }),
 new Place({
  name: 'Cape York peninsula'
  zoom: 8
  center: [-14.2, 142.91]
 }),
 new Place({
  name: 'Jutland'
  zoom: 8
  center: [55.87, 9.23]
 }),
 new Place({
  name: 'Baja California'
  zoom: 8
  center: [27.68, -113.42]
 }),
 new Place({
  name: 'Alaska Peninsula'
  zoom: 8
  center: [56.41, -159.04]
 }),
 new Place({
  name: 'Kamchatka Peninsula'
  zoom: 7
  center: [57.3, 159.74]
 }),
 new Place({
  name: 'Seward Peninsula'
  zoom: 8
  center: [65.42, -163.7]
 }),
 new Place({
  name: 'Kola Peninsula'
  zoom: 7
  center: [67.5, 37.27]
 }),
 new Place({
  name: 'Chukchi Peninsula'
  zoom: 7
  center: [65.89, -174.86]
 }),
 new Place({
  name: 'Boothia Peninsula'
  zoom: 7
  center: [70.86, -94.39]
 }),
 new Place({
  name: 'Yamal Peninsula'
  zoom: 7
  center: [71.14, 69.92]
 })
],

strange_places: [
 new Place({
  name: 'Belcher Islands'
  zoom: 5
  center: [56.251981, -79.365234]
 }),
 new Place({
  name: 'Meanders, Oxbows near Yenisei Delta'
  zoom: 7
  center: [70.350818, 81.001511]
 }),
 new Place({
  name: 'More Meanders & Oxbows near Yenisei Delta'
  zoom: 7
  center: [67.11977, 80.566864]
 }),
 new Place({
  name: 'Meandering River on Sakhalin Island'
  zoom: 8
  center: [49.99733, 142.942085]
 }),
 new Place({
  name: 'Rano Kau Volcanic Crater, Easter Island'
  zoom: 12
  center: [-27.186713, -109.435329]
 }),
 new Place({
  name: 'Volga Delta'
  zoom: 8
  center: [46.146934, 47.647705]
 }),
 new Place({
  name: 'Mouths of the Ganges'
  zoom: 5
  center: [22.34, 89.85]
 }),
 new Place({
  name: 'Peninsula near Christchurch, NZ'
  zoom: 7
  center: [-43.75242, 172.897339]
 })
],

populous_islands: [
 new Place({
  name: 'Java'
  zoom: 8
  center: [-7.39, 110.39]
 }),
 new Place({
  name: 'Honshu'
  zoom: 7
  center: [36.92, 138.02]
 }),
 new Place({
  name: 'Great Britain'
  zoom: 7
  center: [54.73, -2]
 }),
 new Place({
  name: 'Sumatra'
  zoom: 7
  center: [-1.1, 102.04]
 }),
 new Place({
  name: 'Luzon'
  zoom: 8
  center: [15.51, 121.1]
 }),
 new Place({
  name: 'Taiwan'
  zoom: 9
  center: [23.7, 121]
 }),
 new Place({
  name: 'Sri Lanka'
  zoom: 9
  center: [7.92, 80.77]
 }),
 new Place({
  name: 'Madagascar'
  zoom: 7
  center: [-19, 46.54]
 }),
 new Place({
  name: 'Hispaniola'
  zoom: 8
  center: [19, -71.54]
 }),
 new Place({
  name: 'Mindanao'
  zoom: 8
  center: [7.68, 124.47]
 }),
 new Place({
  name: 'Borneo'
  zoom: 7
  center: [0.74, 113.85]
 }),
 new Place({
  name: 'Sulawesi'
  zoom: 8
  center: [-1.85, 121.29]
 }),
 new Place({
  name: 'Salsette'
  zoom: 10
  center: [19.17, 72.9]
 }),
 new Place({
  name: 'Kyushu'
  zoom: 9
  center: [32.6, 130.77]
 }),
 new Place({
  name: 'Cuba'
  zoom: 8
  center: [21.77, -79.5]
 }),
 new Place({
  name: 'Hainan'
  zoom: 9
  center: [19.14, 109.79]
 }),
 new Place({
  name: 'Long Island'
  zoom: 9
  center: [40.83, -73.05]
 }),
 new Place({
  name: 'New Guinea'
  zoom: 7
  center: [-5.54, 141.28]
 }),
 new Place({
  name: 'Ireland'
  zoom: 8
  center: [53.37, -7.91]
 }),
 new Place({
  name: 'Hokkaido'
  zoom: 8
  center: [43.39, 142.58]
 }),
 new Place({
  name: 'Singapore'
  zoom: 11
  center: [1.36, 103.82]
 }),
 new Place({
  name: 'Sicily'
  zoom: 9
  center: [37.56, 14.26]
 })
],

phillipines: [
 new Place({
  name: 'Luzon'
  zoom: 8
  center: [15.51, 121.1]
 }),
 new Place({
  name: 'Mindanao'
  zoom: 8
  center: [7.68, 124.47]
 }),
 new Place({
  name: 'Negros'
  zoom: 9
  center: [10.129258, 123.063354]
 }),
 new Place({
  name: 'Samar'
  zoom: 9
  center: [11.865503, 125.117798]
 }),
 new Place({
  name: 'Palawan'
  zoom: 8
  center: [9.642215, 118.547974]
 }),
 new Place({
  name: 'Panay'
  zoom: 10
  center: [11.198105, 122.470093]
 }),
 new Place({
  name: 'Mindoro'
  zoom: 10
  center: [12.966169, 121.121521]
 }),
 new Place({
  name: 'Leyte'
  zoom: 10
  center: [10.837774, 124.867859]
 }),
 new Place({
  name: 'Cebu'
  zoom: 10
  center: [10.356294, 123.766479]
 }),
 new Place({
  name: 'Bohol'
  zoom: 10
  center: [9.876399, 124.215546]
 }),
 new Place({
  name: 'Masbate'
  zoom: 10
  center: [12.189242, 123.636017]
 })
]
}
