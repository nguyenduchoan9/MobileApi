class GeneralPolicy
  class << self

    def index?(user, record)
      PolicyUtils.is_owner(user, record)
    end

    def show?(user, record)
      PolicyUtils.is_owner(user, record)
    end

    def destroy?(user, record)
      PolicyUtils.is_owner(user, record)
    end

    def create?(user, record)
      PolicyUtils.is_owner(user, record)
    end

    def update?(user, record)
      PolicyUtils.is_owner(user, record)
    end

  end
end
