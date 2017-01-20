json.array! @bills.each do |bill|
  json.bill_id bill["bill_id"]
  json.type bill["type"]
  json.chamber bill["chamber"]
  json.conrgress bill["conrgress"]
  json.cosponsors_count bill["cosponsors_count"]
  json.enacted_as bill["enacted_as"]
  json.introduced_on bill["introduced_on"]
  json.last_action_at bill["last_action_at"]
  json.last_version_on bill["last_version_on"]
  json.last_vote_at bill["last_vote_at"]
  json.official_title bill["official_title"]
  json.popular_title bill["popular_title"]
  json.related_bill_ids bill["related_bill_ids"]
  json.short_title bill["short_title"]
  json.sponsor bill["sponsor"]

end