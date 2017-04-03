json.extract! vote, :id, :course_id, :count, :created_at, :updated_at
json.url vote_url(vote, format: :json)
