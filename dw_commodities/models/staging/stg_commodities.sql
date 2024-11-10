with source as (
    select
        "Date",
        "Close",
        "simbolo"
    from
        {{ source ('dbcommodities', 'commodities') }}
),

renamed as (

    select
        cast("Date" as date) as data,
        "Close" as valor_de_fechamento,
        simbolo
    from
        source
)

select * from renamed