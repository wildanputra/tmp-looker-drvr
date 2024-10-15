view: drivers {
  sql_table_name: public.drivers ;;
  drill_fields: [driver_id]

  dimension: driver_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."DRIVER_ID" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }
  dimension: emergency_contacts {
    type: string
    sql: ${TABLE}."EMERGENCY_CONTACTS" ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }
  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }
  dimension: org_path {
    type: string
    sql: ${TABLE}."ORG_PATH" ;;
  }
  dimension: parent_org_id {
    type: string
    sql: ${TABLE}."PARENT_ORG_ID" ;;
  }
  dimension: settings_collision_detection_enabled {
    type: yesno
    sql: ${TABLE}."SETTINGS_COLLISION_DETECTION_ENABLED" ;;
  }
  dimension: settings_road_snapping_enabled {
    type: yesno
    sql: ${TABLE}."SETTINGS_ROAD_SNAPPING_ENABLED" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	driver_id,
	last_name,
	first_name,
	events.count,
	events_temp.count,
	trips.count,
	trips_temp.count
	]
  }

}
