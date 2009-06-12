class String
  
  def domain
    self.strip =~ /^(?:(?:http|ftp):\/\/)?(?:www\.)?([\w\.]+?)(?:\/|$)/i
    return $1.downcase if $1
  end
  
end