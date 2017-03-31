class RosterEntriesController < ApplicationController
  def index
    @roster = RosterEntry.all
  end

  def new
    p "***************"
    p params
    @roster_entry = RosterEntry.new
  end

  def create
    if !duplicate_user
      @roster_entry = RosterEntry.new(sub?: false)
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
      p player
      if player.player_id == current_user.id
        return true
      end
    end
  end
end
