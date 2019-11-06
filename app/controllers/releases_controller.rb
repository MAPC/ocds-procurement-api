class ReleasesController < ApplicationController
  def create
    package = Package.find_or_create_by!(uri: "#{request.base_url}/packages/#{params['ocid']}")
    release = Release.new(data: params['data'], package: package)

    if release.save
      render json: release.to_json, status: :created
    else
      render json: release.errors, status: :unprocessable_entity
    end
  end
end
