class JsonWebToken
    Secret = "asdasdfadsgafbvzjsdnvj21n1'1j4nfjnjn'1jnjnjnj234nj1n3j4nvjandfvcjnvjan3j1nj34n_njandjanj12j123"
    def encode(payload)
        JWT.encode(payload. Secret)
    end
    def decode(token)
        begin
            JWT.decode(token, Secret)
        rescue => exception
            nil
        end
    end
    

end
