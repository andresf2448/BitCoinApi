def validateTransactionSell(user_id, dataUser, type, csend, creceive, asend, areceive) 
    balance = {"btc" => dataUser.btc, "usd" => dataUser.usd}

    if balance[csend] < asend
        return false
    else
        dataUser[csend] = dataUser[csend] - asend
        dataUser[creceive] = dataUser[creceive] + areceive
        dataUser.save

        begin
            transaction = Transaction.new({"type_transaction": type, "user_id": user_id, "csend": csend, "creceive": creceive, "asend": asend, "areceive": areceive})

            transaction.save
        rescue
            puts "Error"
        end
        
        return true
    end
end