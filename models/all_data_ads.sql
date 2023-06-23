{{ config (
    materialized="table"
)}}

select channel,
       round(sum(spend) / sum(engagements),2) as cost_per_engage,
       round(sum(0),2) as conversion_cost,
       round(sum(impressions),2) as impressions,
       round(sum(spend) / sum(clicks),2) as crc 
from `dbt_yzhanibek.src_promoted_tweets_twitter_all_data`
group by channel

union all

select channel,
       round(sum(0),2) as cost_per_engage,
       round(sum(spend) / sum(conv),2) as conversion_cost,
       round(sum(imps),2) as impressions,
       round(sum(spend) / sum(clicks),2) as crc 
from `dbt_yzhanibek.src_ads_bing_all_data`
group by channel
union all
select channel,
       round(sum(spend) / sum(views),2) as cost_per_engage,
       round(sum(spend) / sum(purchase) ,2) as conversion_cost,
       round(sum(impressions),2) as impressions,
       round(sum(spend) / sum(clicks),2) as crc 
from `dbt_yzhanibek.src_ads_creative_facebook_all_data`
group by channel
union all
select channel,
       round(sum(spend) / sum(video_views),2) as cost_per_engage,
       round(sum(spend) / sum(conversions) ,2) as conversion_cost,
       round(sum(impressions),2) as impressions,
       round(sum(spend) / sum(clicks),2) as crc 
from `dbt_yzhanibek.src_ads_tiktok_ads_all_data`
group by channel




