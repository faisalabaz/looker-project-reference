view: explore_4 {
  derived_table: {
    sql:
    SELECT
      trx_date,
      prd_cd,
      qty,
      gross
    FROM `table_4`
    ;;
    datagroup_trigger: datagroup__refresh_everyday
  }

  dimension: trx_date {
    type: date
    datatype: date
    sql: ${TABLE}.trx_date ;;
    label: "Transaction Date"
  }

  dimension: prd_cd {
    type: string
    sql: ${TABLE}.prd_cd ;;
    label: "Product Code"
  }
  
  measure: qty {
    type: sum
    sql: ${TABLE}.qty ;;
  }

  measure: gross {
    type: sum
    sql: ${TABLE}.gross ;;
  }
}
