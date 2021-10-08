module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.order('created_ts DESC');
        render json: {status: 'SUCCESS', data:users},status: :ok
      end

      def show
        user = User.find_by_username(params[:id])
        render json: {status: 'SUCCESS', data:user},status: :ok
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: {status: 'SUCCESS', data:user},status: :ok
        else
          render json: {status: 'ERROR', data:user.errors},status: :unprocessable_entity
        end
      end

      def destroy
      end

      def update
      end

      private

      def user_params
        params.permit(:username)
      end
    end
  end
end
