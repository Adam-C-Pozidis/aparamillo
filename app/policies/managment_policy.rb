class ManagmentPolicy < Struct.new(:user, :managment)

  def main?
    true
    @shop = Shop.find(user_id: user.id)
    raise
  end

  def shop?
    true
  end

end
