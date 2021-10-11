with payments as (

    select
        id as payment_id,
        orderid AS order_id,
        paymentmethod as payment_method,
        status,
        -- convert amount from cents to dollars
        1.00 * amount / 100 as amount,
        created as created_at
    
    from `dbt-tutorial.stripe.payment`

)

select * from payments