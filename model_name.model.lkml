# Connection
connection: "<connection_name>"

# Datagroup
datagroup: datagroup__refresh_every_hour {
  max_cache_age: "90 minutes"
  interval_trigger: "60 minutes"
  description: "This datagroup will refresh all connected explore every 60m."
}

datagroup: datagroup__refresh_everyday {
  max_cache_age: "36 hours"
  sql_trigger: SELECT CURRENT_DATE("Asia/Jakarta") ;; # the derived table in the datagroup is updated when there is a result difference
  description: "This datagroup will refresh all connected explore everyday."
}

# Explore
# Model 1
include: "/views/**/*.view.lkml" # include all views in the views/ folder in this project

explore: explore_1 {
  from: explore_1
}

explore: explore_2 {
  persist_with: datagroup__refresh_everyday
  from: explore_2
  hidden: yes
}

# Model 2
explore: explore_3 {
  persist_with: datagroup__refresh_every_hour
  from: explore_3
  hidden: yes
}

explore: explore_4 {
  from: explore_4
}
