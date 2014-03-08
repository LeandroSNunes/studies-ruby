# Estendendo o FactoryGirl
# class_eval para criar método de upload
# ex.:
# Factory.define :user do |f|
#   f.name "Daniel Lopes"
#   f.login "daniellopes"
#   f.attachment(:avatar, "spec/fixtures/uploads/me.jpg", "image/jpg")
# end
# 
# user = Factory(:user)
# user.avatar.url 

if Rails.env == "test"
  require 'action_controller/test_process'

  Factory.class_eval do
    def attachment(name, path, content_type = nil)
      path_with_rails_root = "#{Rails.root}/#{path}"
      uploaded_file = if content_type
                        ActionController::TestUploadedFile.new(path_with_rails_root, content_type)
                      else
                        ActionController::TestUploadedFile.new(path_with_rails_root)
                      end

      add_attribute name, uploaded_file
    end
  end
end