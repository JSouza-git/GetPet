json.extract! agendamento, :id, :pet_id, :servico_id, :usuario_id, :data, :observacao, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
