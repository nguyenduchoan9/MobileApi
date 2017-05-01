module Users
  module V1
    class Create < Operation
      require_authen!
      require_authorize!

      def process
        if user.update(user_params)
          User::Serializer.new(user)
        else
          raise ValidateError.new(user.errors)
        end

        private
        def user
          @user ||= User.find_by(access_token: headers.fetch(:access_token))
        end

        def user_params
          params.permit(
            :first_name,
            :last_name,
            :email,
            :password
          )
        end
      end
    end
  end
end
