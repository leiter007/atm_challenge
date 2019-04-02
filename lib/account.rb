class Account
    attr_accessor :pin_code, :owner, :account_status
    def initialize (attrs = {})
        @pin_code = rand(1000..9999)
        @account_status = :active
        set_owner(attrs[:owner])
    end

    private

    def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
    raise 'An Account owner is required'
    end
end