view: explore_2 {
  derived_table: {
    sql:
    SELECT
      trx_date,
      shop_cd,
      qty,
      gross
    FROM `table_1`
    ;;
    datagroup_trigger: datagroup__refresh_everyday
  }

  dimension: trx_date {
    type: date
    datatype: date
    sql: ${TABLE}.trx_date ;;
    label: "Transaction Date"
  }

  dimension: shop_cd {
    type: string
    sql: ${TABLE}.shop_cd ;;
    label: "Shop Code"
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
