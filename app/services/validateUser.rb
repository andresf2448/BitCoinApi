def validate(username, password)
    user = User.find_by(username: username)

    begin
        if user.password == password
            return user.id
        else
            return "clave inválida"
        end
    rescue
        return "usuario no existe"
    end
end