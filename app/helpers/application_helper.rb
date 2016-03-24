module ApplicationHelper
  def ta(model, attr)
    t("activerecord.attributes.#{model}.#{attr}")
  end
end
