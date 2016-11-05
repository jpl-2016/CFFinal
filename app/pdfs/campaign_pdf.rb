class CampaignFinanceInfoPdf < Prawn::Document
  def initialize(campaign_finance_info)
    super(top_margin: 70)
    @campaign_finance_info = campaign_finance_info
    text "Campaign Report \##{@campaign_finance_info.id}"
  end
end