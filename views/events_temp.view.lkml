view: events_temp {
  sql_table_name: public.events_temp ;;

  dimension: driver_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."DRIVER_ID" ;;
  }
  dimension: org_path {
    type: string
    sql: ${TABLE}."ORG_PATH" ;;
  }
  dimension: trip_end_time {
    type: string
    sql: ${TABLE}."TRIP_END_TIME" ;;
  }
  dimension: trip_end_time_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_END_TIME_TZ_OFFSET" ;;
  }
  dimension: trip_events_event_end_time {
    type: string
    sql: ${TABLE}."TRIP_EVENTS_EVENT_END_TIME" ;;
  }
  dimension: trip_events_event_end_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_EVENT_END_TZ_OFFSET" ;;
  }
  dimension: trip_events_event_meta_actual_speed_kph {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_EVENT_META_ACTUAL_SPEED_KPH" ;;
  }
  dimension: trip_events_event_meta_duration_in_second {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_EVENT_META_DURATION_IN_SECOND" ;;
  }
  dimension: trip_events_event_meta_posted_speed_kph {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_EVENT_META_POSTED_SPEED_KPH" ;;
  }
  dimension: trip_events_event_start_time {
    type: string
    sql: ${TABLE}."TRIP_EVENTS_EVENT_START_TIME" ;;
  }
  dimension: trip_events_event_start_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_EVENT_START_TZ_OFFSET" ;;
  }
  dimension: trip_events_event_type {
    type: string
    sql: ${TABLE}."TRIP_EVENTS_EVENT_TYPE" ;;
  }
  dimension: trip_events_start_loc_lat {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_START_LOC_LAT" ;;
  }
  dimension: trip_events_start_loc_lon {
    type: number
    sql: ${TABLE}."TRIP_EVENTS_START_LOC_LON" ;;
  }
  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."TRIP_ID" ;;
  }
  dimension: trip_start_time {
    type: string
    sql: ${TABLE}."TRIP_START_TIME" ;;
  }
  dimension: trip_start_time_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_START_TIME_TZ_OFFSET" ;;
  }
  measure: count {
    type: count
    drill_fields: [drivers.driver_id, drivers.last_name, drivers.first_name, trips.trip_id]
  }
}
