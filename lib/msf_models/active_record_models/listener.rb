class Listener < ActiveRecord::Base
  include Msf::DBManager::DBSave

  belongs_to :workspace
  belongs_to :task

  serialize :options, MsfModels::Base64Serializer.new
  validates :address, :presence => true, :ip_format => true
  validates :port, :presence => true
end

