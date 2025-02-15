module PhoneNumber

  NANP_FORMAT = %r{
    \A
    \+?(?<internationl_code>1?)
    \D*(?<area_code>[2-9][0-9]{2})
    \D*(?<exchange_code>[2-9][0-9]{2})
    \D*(?<subscriber_number>[0-9]{4})
    \D*
    \z
  }x

  def self.clean(phone_number)
    result = phone_number.match(NANP_FORMAT)
    result.nil? ? nil : result.captures[1..-1].join
  end
end