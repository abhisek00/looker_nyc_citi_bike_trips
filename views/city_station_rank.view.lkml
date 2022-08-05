

  view: city_station_rank {
    derived_table: {
      explore_source: citibike_stations {
        column: name {}
        column: num_bikes_available {}
        column: capacity {}
        derived_column: station_rank {
          sql: row_number() over (order by capacity desc) ;;
        }
        filters: {
          field: citibike_stations.is_renting
          value: "Yes"
        }
        filters: {
          field: citibike_stations.last_reported_date
          value: "2021/11/08"
        }


      }
    }
    dimension: name {
      description: "Public name of the station."
    }
    dimension: num_bikes_available {
      description: "Number of bikes available for rental."
      type: number
    }
    dimension: capacity {
      description: "ANumber of total docking points installed at this station, both available and unavailable."
      type: number
    }

    dimension: Station_rank {
      type: number
    }

    dimension: Station_rank_top100 {
      type: yesno
      sql: ${Station_rank} <= 100 ;;
    }

    dimension: Station_rank_grouped {
      label: "Station Name Grouped"
      type: string
      sql: case when ${Station_rank_top100} then ${name} else '101) Other' end ;;
    }


  }
