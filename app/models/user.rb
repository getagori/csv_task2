class User < ApplicationRecord
    def self.import(path)

        CSV.foreach(path, headers: true) do |row|
            User.create(
                name: row["name"],
                age: row["age"],
                address: ["address"]
            )
        end
    end
end
