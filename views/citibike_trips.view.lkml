view: citibike_trips {
  sql_table_name: `looker_nyc_citi_bike_trips.citibike_trips`
    ;;

  dimension: bikeid {
    type: number
    description: "Bike ID"
    value_format_name: id
    sql: ${TABLE}.bikeid ;;
  }

  dimension: birth_year {
    type: number
    description: "Year of Birth"
    sql: ${TABLE}.birth_year ;;
  }

  dimension: customer_plan {
    type: string
    description: "The name of the plan that determines the rate charged for the trip"
    sql: ${TABLE}.customer_plan ;;
  }

  dimension: end_station_id {
    type: number
    description: "End Station ID"
    sql: ${TABLE}.end_station_id ;;
  }

  dimension: end_station_latitude {
    type: number
    description: "End Station Latitude"
    sql: ${TABLE}.end_station_latitude ;;
  }

  dimension: end_station_longitude {
    type: number
    description: "End Station Longitude"
    sql: ${TABLE}.end_station_longitude ;;
  }

  dimension: end_station_name {
    type: string
    description: "End Station Name"
    sql: ${TABLE}.end_station_name ;;
  }

  dimension: gender {
    type: string
    description: "Gender (unknown, male, female)"
    sql: ${TABLE}.gender ;;
  }

  dimension: start_station_id {
    type: number
    description: "Start Station ID"
    sql: ${TABLE}.start_station_id ;;
  }

  dimension: start_station_latitude {
    type: number
    description: "Start Station Latitude"
    sql: ${TABLE}.start_station_latitude ;;
  }

  dimension: start_station_longitude {
    type: number
    description: "Start Station Longitude"
    sql: ${TABLE}.start_station_longitude ;;
  }

  dimension: start_station_name {
    type: string
    description: "Start Station Name"
    sql: ${TABLE}.start_station_name ;;
  }

  dimension_group: starttime {
    type: time
    description: "Start Time, in NYC local time."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.starttime ;;
  }

  dimension_group: stoptime {
    type: time
    description: "Stop Time, in NYC local time."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.stoptime ;;
  }

  dimension: tripduration {
    type: number
    description: "Trip Duration (in seconds)"
    sql: ${TABLE}.tripduration ;;
  }

  dimension: usertype {
    type: string
    description: "User Type (Customer = 24-hour pass or 7-day pass user, Subscriber = Annual Member)"
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: [start_station_name, end_station_name]
  }
}
