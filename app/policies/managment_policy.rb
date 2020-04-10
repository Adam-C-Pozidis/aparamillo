class ManagmentPolicy < Struct.new(:user, :managment)
  def main?
    true
  end
  
  def shop?
    true
  end
end
