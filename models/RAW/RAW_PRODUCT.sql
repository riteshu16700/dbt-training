{{
    config(
        materialized='table'
    )
}}

Select  * FROM 
{{ source('globalmart', 'product') }}