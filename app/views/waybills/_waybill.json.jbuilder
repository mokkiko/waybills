json.extract! waybill, :id, :driver_id, :waybill_date, :mileage_at_morning, :mileage_at_evening, :mileage_daily, :created_at, :updated_at
json.url waybill_url(waybill, format: :json)
