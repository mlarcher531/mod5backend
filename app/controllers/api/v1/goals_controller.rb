class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all
        render json: goals, include: :user
    end

    def show
        goal = Goal.find(params[:id])
        render json: goal, include: :user
    end

    def create
        newGoal = Goal.create!(user_id: params[:user_id], goal1_name: params[:goal1_name], goal1: params[:goal1], goal2_name: params[:goal2_name], goal2: params[:goal2], goal3_name: params[:goal3_name], goal3: params[:goal3], goal4_name: params[:goal4_name], goal4: params[:goal4], early_game_goal_name: params[:early_game_goal_name], early_game_goal: params[:early_game_goal], mid_game_goal_name: params[:mid_game_goal_name], mid_game_goal: params[:mid_game_goal], late_game_goal_name: params[:late_game_goal_name], late_game_goal: params[:late_game_goal] )
        if newGoal.valid?
            render json: newGoal
        else
            render json: {error: 'failed'}
        end
    end

    def update
        goal= Goal.find(params[:id])
        goal.update(user_id: params[:user_id], goal1_name: params[:goal1_name], goal1: params[:goal1], goal2_name: params[:goal2_name], goal2: params[:goal2], goal3_name: params[:goal3_name], goal3: params[:goal3], goal4_name: params[:goal4_name], goal4: params[:goal4], early_game_goal_name: params[:early_game_goal_name], early_game_goal: params[:early_game_goal], mid_game_goal_name: params[:mid_game_goal_name], mid_game_goal: params[:mid_game_goal], late_game_goal_name: params[:late_game_goal_name], late_game_goal: params[:late_game_goal] )
        render json: goal, include: :user
    end

    def destroy
        goal = Goal.find(params[:id])
        goal.destroy
        render json: goal, include: :user
      end
end
