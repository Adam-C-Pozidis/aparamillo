class ManagmentPolicy < Struct.new(:user, :managment)

  def main?
    user.owner?
  end

  def shop?
    main?
  end

end
