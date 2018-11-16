SELECT 
    cx.entity_id AS customer_id,
    cx.created_at,
    cx.dob,
    d5.value as grisk_eligible_pending_date,
    d6.value as customer_doc_upload_date,
    d1.value as grisk_confirm_date,
    d4.value as grisk_pv_upload_date,    
    d3.value as score_stab_grad_date,
    d2.value as grisk_pv_approve_date
 FROM
    krazybee.customer_entity AS cx
        LEFT JOIN
    krazybee.customer_entity_datetime AS d1 ON cx.entity_id = d1.entity_id and d1.attribute_id = 270
            LEFT JOIN
    krazybee.customer_entity_datetime AS d2 ON cx.entity_id = d2.entity_id and d2.attribute_id = 316
                LEFT JOIN
    krazybee.customer_entity_datetime AS d3 ON cx.entity_id = d3.entity_id and d3.attribute_id = 295
                    LEFT JOIN
    krazybee.customer_entity_datetime AS d4 ON cx.entity_id = d4.entity_id and d4.attribute_id = 253
                        LEFT JOIN
    krazybee.customer_entity_datetime AS d5 ON cx.entity_id = d5.entity_id and d5.attribute_id = 362
                            LEFT JOIN
    krazybee.customer_entity_datetime AS d6 ON cx.entity_id = d6.entity_id and d6.attribute_id = 166

WHERE
    cx.group_id IN (4 , 5, 6, 7, 8, 9, 10);