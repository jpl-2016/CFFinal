json.extract! contribution_type, :id, :type, :created_at, :updated_at
json.url contribution_type_url(contribution_type, format: :json)