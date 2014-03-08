# Rails 3.0
# instance_eval - quebrando a privacidade para testes
# rails/actionpack/test/controller/mime_responds_test.rb

class RespondWithController < ActionController::Base
  respond_to :html, :json
  respond_to :xml, :except => :using_resource_with_block
  respond_to :js,  :only => [ :using_resource_with_block, :using_resource ]

  #...

  def using_resource_with_action
    respond_with(resource, :action => :foo) do |format|
      format.html { raise ActionView::MissingTemplate.new([], "foo/bar", {}, false) }
    end
  end

# ...

protected

  def resource
    Customer.new("david", request.delete? ? nil : 13)
  end
end




class RespondWithControllerTest < ActionController::TestCase
  tests RespondWithController

  def setup
    super
    @request.host = "www.example.com"
  end

  def teardown
    super
  end

  def test_using_resource_with_action
    @controller.instance_eval do
      def render(params={})
        self.response_body = "#{params[:action]} - #{formats}"
      end
    end

    errors = { :name => :invalid }
    Customer.any_instance.stubs(:errors).returns(errors)

    post :using_resource_with_action
    assert_equal "foo - #{[:html].to_s}", @controller.response.body
  end
end
