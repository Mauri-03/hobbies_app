class UsersController < ApplicationController
  before_action :find_user, only: %i[show profile deck requests]
  def show; end

  def profile
    $levels = [['Rookie', '1'], ['Good', '2'], ['Master', '3']];
    $categories = [['Hiking'], ['Backpacking'], ['Camping'], ['Hunting'], ['Fishing'], ['Archery'],['Canoeing'],
    ['Kayaking'], ['Running'], ['Geocaching'], ['Bird Watching'], ['Beekeeping'], ['LARPing'],
    ['Parkour'], ['Astronomy'], ['Kite Flying'], ['Bread Making'], ['Origami'], ['Photography'],
    ['Crocheting'], ['Knitting'], ['Embroidery'], ['Pottery'], ['Wood Carving'], ['Video Games'],
    ['Board Games'], ['Chess'], ['Puzzles'], ['Table Tennis'], ['Billiards'], ['Language Learning'],
    ['Creative Writing'], ['Book Club'], ['Playing an Instrument'], ['Podcast Hosting'], ['Dancing'],
    ['Computer Programming'], ['Travel'], ['Cosplaying'], ['Survivalist Prepping']]

    # $categories = ['Hiking', 'Backpacking', 'Camping', 'Hunting', 'Fishing', 'Archery','Canoeing',
    # 'Kayaking', 'Running', 'Geocaching', 'Bird Watching', 'Beekeeping', 'LARPing',
    # 'Parkour', 'Astronomy', 'Kite Flying', 'Bread Making', 'Origami', 'Photography',
    # 'Crocheting', 'Knitting', 'Embroidery', 'Pottery', 'Wood Carving', 'Video Games',
    # 'Board Games', 'Chess', 'Puzzles', 'Table Tennis', 'Billiards', 'Language Learning',
    # 'Creative Writing', 'Book Club', 'Playing an Instrument', 'Podcast Hosting', 'Dancing',
    # 'Computer Programming', 'Travel', 'Cosplaying', 'Survivalist Prepping']

    @skill = Skill.new
    # @my_hobbies = Hobby.where(user_id: current_user)
    @hobbies = Hobby.where(user_id: 4)
  end

  def deck; end

  def requests; end

  # def chef
  #   @chef_name = @restaurant.chef_name
  # end
  private

  # def user_params
  #   params.require(:user).permit(:location, :bio, :current_password)
  # end

  def find_user
    # @task = Task.find(params[:id])
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end
end
