view: trips_temp {
  sql_table_name: public.trips_temp ;;

  dimension: driver_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."DRIVER_ID" ;;
  }
  dimension: error_code {
    type: number
    sql: ${TABLE}."ERROR_CODE" ;;
  }
  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }
  dimension: event_counts_hard_breaking {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_HARD_BREAKING" ;;
  }
  dimension: event_counts_lane_change {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_LANE_CHANGE" ;;
  }
  dimension: event_counts_phone_usage {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_PHONE_USAGE" ;;
  }
  dimension: event_counts_rapid_acceleration {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_RAPID_ACCELERATION" ;;
  }
  dimension: event_counts_sharp_left_turn {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_SHARP_LEFT_TURN" ;;
  }
  dimension: event_counts_sharp_right_turn {
    type: number
    sql: ${TABLE}."EVENT_COUNTS_SHARP_RIGHT_TURN" ;;
  }
  dimension: is_gps_drift {
    type: yesno
    sql: ${TABLE}."IS_GPS_DRIFT" ;;
  }
  dimension: meta_kamo_app_platform {
    type: string
    sql: ${TABLE}."META_KAMO_APP_PLATFORM" ;;
  }
  dimension: meta_kamo_app_version {
    type: string
    sql: ${TABLE}."META_KAMO_APP_VERSION" ;;
  }
  dimension: meta_occupant_type_model_version {
    type: string
    sql: ${TABLE}."META_OCCUPANT_TYPE_MODEL_VERSION" ;;
  }
  dimension: meta_transportation_mode_model_version {
    type: string
    sql: ${TABLE}."META_TRANSPORTATION_MODE_MODEL_VERSION" ;;
  }
  dimension: meta_vehicle_type {
    type: string
    sql: ${TABLE}."META_VEHICLE_TYPE" ;;
  }
  dimension: occupant_type {
    type: string
    sql: ${TABLE}."OCCUPANT_TYPE" ;;
  }
  dimension: org_path {
    type: string
    sql: ${TABLE}."ORG_PATH" ;;
  }
  dimension: parent_org_id {
    type: string
    sql: ${TABLE}."PARENT_ORG_ID" ;;
  }
  dimension: predicted_occupant_type {
    type: string
    sql: ${TABLE}."PREDICTED_OCCUPANT_TYPE" ;;
  }
  dimension: risk_score_hard_breaking {
    type: number
    sql: ${TABLE}."RISK_SCORE_HARD_BREAKING" ;;
  }
  dimension: risk_score_overall {
    type: number
    sql: ${TABLE}."RISK_SCORE_OVERALL" ;;
  }
  dimension: risk_score_phone_usage {
    type: number
    sql: ${TABLE}."RISK_SCORE_PHONE_USAGE" ;;
  }
  dimension: risk_score_rapid_acceleration {
    type: number
    sql: ${TABLE}."RISK_SCORE_RAPID_ACCELERATION" ;;
  }
  dimension: risk_score_sharp_turn {
    type: number
    sql: ${TABLE}."RISK_SCORE_SHARP_TURN" ;;
  }
  dimension: risk_score_speeding {
    type: number
    sql: ${TABLE}."RISK_SCORE_SPEEDING" ;;
  }
  dimension: transportation_details_is_confirmed {
    type: yesno
    sql: ${TABLE}."TRANSPORTATION_DETAILS_IS_CONFIRMED" ;;
  }
  dimension: transportation_details_is_public_transport {
    type: yesno
    sql: ${TABLE}."TRANSPORTATION_DETAILS_IS_PUBLIC_TRANSPORT" ;;
  }
  dimension: transportation_details_predicted_transportation_type {
    type: string
    sql: ${TABLE}."TRANSPORTATION_DETAILS_PREDICTED_TRANSPORTATION_TYPE" ;;
  }
  dimension: transportation_details_transportation_type {
    type: string
    sql: ${TABLE}."TRANSPORTATION_DETAILS_TRANSPORTATION_TYPE" ;;
  }
  dimension: trip_distance {
    type: number
    sql: ${TABLE}."TRIP_DISTANCE" ;;
  }
  dimension: trip_duration {
    type: number
    sql: ${TABLE}."TRIP_DURATION" ;;
  }
  dimension: trip_end_loc_lat {
    type: number
    sql: ${TABLE}."TRIP_END_LOC_LAT" ;;
  }
  dimension: trip_end_loc_lon {
    type: number
    sql: ${TABLE}."TRIP_END_LOC_LON" ;;
  }
  dimension: trip_end_time {
    type: string
    sql: ${TABLE}."TRIP_END_TIME" ;;
  }
  dimension: trip_end_time_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_END_TIME_TZ_OFFSET" ;;
  }
  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."TRIP_ID" ;;
  }
  dimension: trip_score_hard_breaking {
    type: number
    sql: ${TABLE}."TRIP_SCORE_HARD_BREAKING" ;;
  }
  dimension: trip_score_overall {
    type: number
    sql: ${TABLE}."TRIP_SCORE_OVERALL" ;;
  }
  dimension: trip_score_phone_usage {
    type: number
    sql: ${TABLE}."TRIP_SCORE_PHONE_USAGE" ;;
  }
  dimension: trip_score_rapid_acceleration {
    type: number
    sql: ${TABLE}."TRIP_SCORE_RAPID_ACCELERATION" ;;
  }
  dimension: trip_score_sharp_turn {
    type: number
    sql: ${TABLE}."TRIP_SCORE_SHARP_TURN" ;;
  }
  dimension: trip_score_speeding {
    type: number
    sql: ${TABLE}."TRIP_SCORE_SPEEDING" ;;
  }
  dimension: trip_start_loc_lat {
    type: number
    sql: ${TABLE}."TRIP_START_LOC_LAT" ;;
  }
  dimension: trip_start_loc_lon {
    type: number
    sql: ${TABLE}."TRIP_START_LOC_LON" ;;
  }
  dimension: trip_start_time {
    type: string
    sql: ${TABLE}."TRIP_START_TIME" ;;
  }
  dimension: trip_start_time_tz_offset {
    type: number
    sql: ${TABLE}."TRIP_START_TIME_TZ_OFFSET" ;;
  }
  dimension: trip_status {
    type: string
    sql: ${TABLE}."TRIP_STATUS" ;;
  }
  measure: count {
    type: count
    drill_fields: [trips.trip_id, drivers.driver_id, drivers.last_name, drivers.first_name]
  }
}
