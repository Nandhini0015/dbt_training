{% snapshot orders_snapshot %}

{{ config (target_database = 'ANALYTICS', 
           target_schema = 'SNAPSHOTS',
           unique_key = 'id',
           strategy = 'timestamp',
           updated_at = 'ETL_LOADED_AT') }}

select * from RAW.JAFFLE_SHOP.ORDERS

{% endsnapshot %}