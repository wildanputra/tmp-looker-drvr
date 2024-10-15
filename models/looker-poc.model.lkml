connection: "postgre-kamo-uat-conn"

include: "../views/*.view.lkml"                # include all views in the views/ folder in this project
include: "../explores/*.explore.lkml"                 # include all views in this project
# include: "../dashboards/*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
