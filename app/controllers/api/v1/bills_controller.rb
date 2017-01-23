class Api::V1::BillsController < ApplicationController
  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/bills?history.active=true&order=last_action_at&fields=type,chamber,committee_ids,congress,cosponsors_count,enacted_as,history,introduced_on,last_action_at,last_version,last_version_on,last_vote_at,official_title,popular_title,related_bill_ids,short_title,sponsor,sponsor_id,urls,withdrawn_cosponsors_count,keywords,summary,summary_short"
    ).body
    @bills = @data["results"]
    # @upcoming_house_data = Unirest.get(
    #   "https://congress.api.sunlightfoundation.com/upcoming_bills?chamber=house&order=scheduled_at"
    # ).body
    # @upcoming_house_bills = @upcoming_house_data["results"]
    render 'index.json.jbuilder'
  end

  def show
    @datum = Unirest.get(
    "https://congress.api.sunlightfoundation.com/bills?bill_id=#{params[:id]}"
    ).body
    @bill = @datum["results"][0]
    render 'show.json.jbuilder'
  end
end
