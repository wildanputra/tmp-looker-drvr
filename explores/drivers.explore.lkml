include: "/views/*.view.lkml"

explore: drivers {
  join: trips {
    relationship: one_to_many
    sql_on: ${drivers.driver_id} = ${trips.driver_id} ;;
  }

  join: events {
    relationship: one_to_many
    sql_on: ${drivers.driver_id} = ${events.driver_id} ;;
  }
}
