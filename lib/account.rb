class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date, :owner
    def initialize (attrs = {})
        @balance = 0
        @pin_code = rand(1000..9999)
        @account_status = :active
        @exp_date =  set_expire_date 
        set_owner(attrs[:owner])
    end

    def deactivate
        @account_status = :deactivated
    end

    private
    
    def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
    raise 'An Account owner is required'
    end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
end
