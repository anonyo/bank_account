def add_account(name, password, accounts)
    accounts = {'name'=>name,'password'=>password,'balance'=>0}
    return accounts
end

def get_balance(accounts)
    return accounts['balance']
end

def do_deposit(accounts, amount)
    accounts['balance'] += amount
    return accounts
end

def do_withdraw(accounts, amount)
    accounts['balance'] -= amount
    return accounts
end   

def do_transfer(debtor, creditor, amount)    
    accounts = {}
    if debtor['balance'] >= amount
        creditor['balance'] += amount
        debtor['balance'] -= amount
    end
    accounts['debtor'] = debtor
    accounts['creditor'] = creditor
    return accounts
end 