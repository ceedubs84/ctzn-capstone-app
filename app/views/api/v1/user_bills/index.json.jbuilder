json.array! @user_bills.each do |user_bill|
  json.id user_bill.id
  json.vote user_bill.vote
  json.bill_id user_bill.bill_id
  json.official_title user_bill.official_title
end