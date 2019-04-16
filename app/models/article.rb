class Article < ApplicationRecord
    #LAS VALIDACIONES DE LOS DATOS VAN EN EL MODELO
    validates :title, presence: true #Valida que el elemento exista (no esté vacío)
    validates :body, presence: true
end
