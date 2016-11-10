class CampaignFinanceInfosController < ApplicationController
  before_action :set_campaign_finance_info, only: [:show, :edit, :update, :destroy]

  # GET /campaign_finance_infos
  # GET /campaign_finance_infos.json
  def index
    @campaign_finance_infos = CampaignFinanceInfo.all
  end

  # GET /campaign_finance_infos/1
  # GET /campaign_finance_infos/1.json
  def show
    @campaign_finance_info = CampaignFinanceInfo.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = CampaignFinanceInfoPdf.new(@campaign_finance_info)
        send_data pdf.render, filename: "CampaignInfo.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /campaign_finance_infos/new
  def new
    @campaign_finance_info = CampaignFinanceInfo.new
  end

  # GET /campaign_finance_infos/1/edit
  def edit
  end

  # POST /campaign_finance_infos
  # POST /campaign_finance_infos.json
  def create
    Rails.logger.debug "COMMIT" + params[:commit]
    @campaign_finance_info = CampaignFinanceInfo.new(campaign_finance_info_params)

    respond_to do |format|
      if @campaign_finance_info.save
        format.html { redirect_to @campaign_finance_info, notice: 'Campaign finance info was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_finance_info }
      else
        format.html { render :new }
        format.json { render json: @campaign_finance_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_finance_infos/1
  # PATCH/PUT /campaign_finance_infos/1.json
  def update
    respond_to do |format|
      if @campaign_finance_info.update(campaign_finance_info_params)
        format.html { redirect_to @campaign_finance_info, notice: 'Campaign finance info was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_finance_info }
      else
        format.html { render :edit }
        format.json { render json: @campaign_finance_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_finance_infos/1
  # DELETE /campaign_finance_infos/1.json
  def destroy
    @campaign_finance_info.destroy
    respond_to do |format|
      format.html { redirect_to campaign_finance_infos_url, notice: 'Campaign finance info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export_yml

    require 'yaml'

    @hash = ActiveRecord::Base.connection.exec_query('SELECT * FROM campaign_finance_infos')
    output = File.new('cfinfo.yml', 'w')

    @hash.each do |row|
      @campaign_finance_info = {'Campaign_Fianace_Info_id' => row['campaign_finance_info_id'], 'Filer_Id' => row['filer_id'], 'Report_Type_Id' => row['report_type_id'], 'Candidate_Id' => row['candidate_id'], 'Treasurer_Id' => row['treasurer_id'], 'Election_Type_Id' => row['election_type_id'], 'Submitdate' => row['submitdate'], 'Filename' => row['filename'], 'CampaignYear' => row['campaignyear'], 'Ontime' => row['ontime'], 'PeriodBegin' => row['periodbegin'], 'PeriodEnd' => row['periodend'], 'ElectionDate' => row['electiondate'], 'Contribution_Id' => row['contribution_id'], 'ContributionCheck' => row['contributioncheck'], 'User_ID' => row['user_id']}
      output.puts YAML.dump(@campaign_finance_info)
    end

    output.close

    flash[:notice] = 'You have successfully exported form.'
    redirect_to root_url

  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_finance_info
      @campaign_finance_info = CampaignFinanceInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_finance_info_params
      params.require(:campaign_finance_info).permit(:name, :filer_id, :report_type_id, :candidate_id, :treasurer_id, :election_type_id, :submitdate, :filename, :campaignyear, :ontime, :periodbegin, :periodend, :electiondate, :contributioncheck, contributions_attributes: [:id, :contribution_type_id, :entity_id, :date, :amount, :description, :isoutofstatepac, :pacid, :istraveloutsideoftx, :destroy], addresses_attributes: [:id, :state_id, :address, :suiteapt, :city, :zipcode, :addresschange, :_destroy], entities_attributes: [:id, :prefix_id, :address_id, :firstname, :mi, :lastname, :suffix, :occupationtitle, :employer, :_destroy], expenditure_attributes: [:id, :entity_id, :expend_type_id, :expend_category_id, :payment_method_id, :date, :amount, :description, :istraveloutsideoftx, :isaustintxlivingexpense, :isbenefitcoh, :isreimbursementintended, :_destroy], loan_attributes: [:id, :campaign_finance_info_id, :entity_id, :date, :isfinancialinstitution, :isoutofstatepac, :pacid, :amount, :interestrate, :maturitydate, :collateraldescription, :ispersonalfunddeposit, :_destroy], coh_payment_attributes:[:id, :campaign_finance_info_id, :entity_id, :expend_category_id, :date, :amount, :description, :istraveloutsideoftx, :isaustintxlivingexpense, :isbenefitcoh, :_destroy], investment_purchase_attributes: [:id, :campaign_finance_info_id, :entity_id, :date, :amount, :description, :_destroy])
    end
end
