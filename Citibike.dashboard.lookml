- dashboard: citibikes
  title: Citibikes
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5vGu95BYbk0CtRFenkWmms
  elements:
  - title: New Tile
    name: New Tile
    model: looker_nyc_citi_bike_trips
    explore: citibike_stations
    type: single_value
    fields: [citibike_stations.Avg_Bikes_Available]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#1A73E8"
    single_value_title: Average bike available
    value_format: "$#.00;($#.00)"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 5
    height: 3
  - title: Untitled
    name: Untitled
    model: looker_nyc_citi_bike_trips
    explore: citibike_stations
    type: looker_pie
    fields: [city_station_rank.Station_rank_grouped, citibike_stations.count]
    sorts: [citibike_stations.count desc]
    limit: 50
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    row: 3
    col: 0
    width: 8
    height: 6
