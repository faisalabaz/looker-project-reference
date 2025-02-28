view: explore_1 {
  derived_table: {
    sql:
    SELECT
      trx_date,
      branch_cd,
      qty,
      gross
    FROM `table_1`
    ;;
  }

  dimension: trx_date {
    type: date
    datatype: date
    sql: ${TABLE}.trx_date ;;
    label: "Transaction Date"
  }

  dimension: branch_cd {
    type: string
    sql: ${TABLE}.branch_cd ;;
    label: "Branch Code"
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
