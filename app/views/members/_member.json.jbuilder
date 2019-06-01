json.extract! member, :id, :name, :last_name, :nick, :fb_link, :insta_link, :lnk_link, :bio, :rol, :birthday, :created_at, :updated_at
json.url member_url(member, format: :json)
