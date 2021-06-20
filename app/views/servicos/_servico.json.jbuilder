json.extract! servico, :id, :nome, :descricao, :duracao, :valor, :observacoes, :created_at, :updated_at
json.url servico_url(servico, format: :json)
