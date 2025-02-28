view: explore_3 {
  derived_table: {
    sql:
    SELECT
      trx_date,
      customer_name,
      qty,
      gross
    FROM `table_3`
    ;;
  }

  dimension: trx_date {
    type: date
    datatype: date
    sql: ${TABLE}.trx_date ;;
    label: "Transaction Date"
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
    label: "Customer Name"
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
