class ManagmentPolicy < Struct.new(:user, :managment)

  def main?
    user.user_owner?
  end

  def shop?
    main?
  end

end
