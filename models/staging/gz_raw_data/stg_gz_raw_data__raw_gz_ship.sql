with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logCost AS log_cost,
        CAST(ship_cost AS FLOAT64) AS ship_cost

    from source

)

select * from renamed
