module MetasploitDataModels::ActiveRecordModels::ModRef
  def self.included(base)
    base.class_eval{
      include Msf::DBManager::DBSave
    }
  end
end
