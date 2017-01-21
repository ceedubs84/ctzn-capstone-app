class AddFieldsToLegislators < ActiveRecord::Migration[5.0]
  def change
    add_column :legislators, :bioguide_id, :string
    add_column :legislators, :in_office, :boolean
    add_column :legislators, :thomas_id, :string
    add_column :legislators, :govtrack_id, :string
    add_column :legislators, :crp_id, :string
    add_column :legislators, :fec_ids, :string
    add_column :legislators, :first_name, :string
    add_column :legislators, :nickname, :string
    add_column :legislators, :last_name, :string
    add_column :legislators, :middle_name, :string
    add_column :legislators, :name_suffix, :string
    add_column :legislators, :gender, :string
    add_column :legislators, :birthday, :string
    add_column :legislators, :term_start, :string
    add_column :legislators, :term_end, :string
    add_column :legislators, :state, :string
    add_column :legislators, :state_name, :string
    add_column :legislators, :party, :string
    add_column :legislators, :title, :string
    add_column :legislators, :chamber, :string
    add_column :legislators, :phone, :string
    add_column :legislators, :fax, :string
    add_column :legislators, :website, :string
    add_column :legislators, :office, :string
    add_column :legislators, :contact_form, :string
    add_column :legislators, :votesmart_id, :string
    add_column :legislators, :icpsr_id, :string
    add_column :legislators, :senate_class, :string
    add_column :legislators, :lis_id, :string
    add_column :legislators, :state_rank, :string
    add_column :legislators, :district, :string
    add_column :legislators, :twitter_id, :string
    add_column :legislators, :youtube_id, :string
    add_column :legislators, :facebook_id, :string
    add_column :legislators, :ocd_id, :string

  end
end
