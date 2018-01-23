class Contact < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}".titleize
  end

  def japan_phone
    if phone_number[0] == "1" && phone_number[1] == "-"
      phone_number
    else
      "+81 #{phone_number}"
    end
  end

  def as_json
    {
    id: id,
    first_name: first_name,
    middle_name: middle_name,
    last_name: last_name,
    full_name: full_name,
    email: email,
    phone_number: phone_number,
    birthday: birthday,
    bio: bio,
    updated_at: friendly_updated_at
    }
  end
end
