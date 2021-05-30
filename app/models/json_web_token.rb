class JsonWebToken
    Secret = "asdasdfadsgafbvzjsdnvj21n11j4nfjnjn1jnjnjnj234nj1n3j4nvjandfvcjnvjan3j1nj34n_njandjanj12j123"
    def self.encode(payload)
        JWT.encode(payload, Secret)
    end
    def self.decode(token)
        begin
            JWT.decode(token, Secret)
        rescue => exception
            nil
        end
    end
    

end
