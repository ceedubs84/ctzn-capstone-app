json.array! @bills.each do |bill|
  json.action_id bill.action_id
  json.status bill.status
  json.user_bill_id bill.user_bill_id
  json.description bill.description
  json.date bill.date
end