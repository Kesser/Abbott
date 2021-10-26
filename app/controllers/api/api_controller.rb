class Api::ApiController < ApplicationController

  before_action :authorize_tenant


  def authorize_tenant

   unless Tenant.find_by(api_key: request.headers['tenant-api-key'])
     return render json: "401 - Invalid token", status: 401
   end
  end

end

