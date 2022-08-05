connection: "abhi-bq"

# include all the views
include: "/views/**/*.view"

datagroup: looker_nyc_citi_bike_trips_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_nyc_citi_bike_trips_default_datagroup

explore: citibike_stations {
  join: city_station_rank {
    type: left_outer
    sql_on: ${citibike_stations.capacity} = ${city_station_rank.capacity} ;;
    relationship: many_to_one
  }
}

explore: citibike_trips {}
