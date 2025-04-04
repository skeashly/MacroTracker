module ApplicationHelper
  def required_label(form, field)
    label_text = form.label(field)
    if form.object.class.validators_on(field).any? { |v| v.is_a?(ActiveModel::Validations::PresenceValidator) }
      label_text + " *"
    else
      label_text
    end
  end
end

