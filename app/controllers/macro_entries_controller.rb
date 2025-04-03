class MacroEntriesController < ApplicationController
  before_action :set_macro_entry, only: [:show]

  def index
    @macro_entries = MacroEntry.all
  end

  def show
  end

  def new
    @macro_entry = MacroEntry.new
  end

  def create
    ##to be used when Devise is implemented
    # @macro_entry = current_user.macro_entries.build(macro_entry_params) 

    # if @macro_entry.save
    #   redirect_to @macro_entry, notice: "Macro entry created successfully!"
    # else
    #   render :new, status: :unprocessable_entity
    # end
    user = User.first #temp placeholder

    @macro_entry = user.macro_entries.build(macro_entry_params)

    if @macro_entry.save
      redirect_to @macro_entry, notice: "Macro entry created successfully"
    else 
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_macro_entry
    @macro_entry = MacroEntry.find(params[:id])
  end

  def macro_entry_params
    params.require(:macro_entry).permit(:protein, :fat, :carbs, :step_count, :notes, :date)
  end
end
