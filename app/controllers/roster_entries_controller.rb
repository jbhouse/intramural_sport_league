class RosterEntriesController < ApplicationController
  def index
    @roster = RosterEntry.all
  end

  def new
    @roster_entry = RosterEntry.new
  end

  def create
    if params[:sub?] != nil
      @roster_entry = RosterEntry.new(sub?: true)
    else
      @roster_entry = RosterEntry.new(sub?: false)
    end
      @roster_entry
    if duplicate_user == false
      @roster_entry.player_id = current_user.id
      @roster_entry.team_id = params[:team_id]
      @roster_entry.save
      redirect_to team_path(params[:team_id])
    else
      @errors = ["You can only sign up once!"]
    end
  end

  private

  def create_roster_entry_params
    params.require(:roster_entries).permit(:sub?)
  end

  def duplicate_user
    @roster = RosterEntry.where(team_id: params[:team_id])
    @roster.each do |player|
      if player.player_id == current_user.id
        return true
      else
        false
      end
    end
    return false
  end
end
