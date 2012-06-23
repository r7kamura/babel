module ApplicationHelper
  def unique_class_name
    controller.controller_name + "_" + controller.action_name
  end
end
