json.extract! pet, :id, :nome, :raca, :cor, :idade, :porte, :observacao, :cliente_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
