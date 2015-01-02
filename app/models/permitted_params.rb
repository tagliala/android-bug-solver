class PermittedParams < Struct.new(:params)
  def issue
    params.require(:issue).permit(*issue_attributes)
  end

  def issue_attributes
    [:device, :description]
  end
end
