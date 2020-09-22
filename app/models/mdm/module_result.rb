# Events that occurred when using a {#session}.
class Mdm::ModuleResult < ApplicationRecord
  
    #
    # Associations
    #
  
    # The session in which the event occurred.
    belongs_to :session,
               class_name: 'Mdm::Session',
               inverse_of: :module_results,
               optional: true
  
    # @!attribute fullname
    #   The fullname of mofule
    #
    #   @return [String]
  
    # @!attribute created_at
    #   When this event occurred.
    #
    #   @return [DateTime]
  
    # @!attribute track_uuid
    #   The current module instance uuid
    #
    #   @return [String]
  
    # @!attribute output
    #   The {#output} of running {#command}.
    #
    #   @return [String]
  
    Metasploit::Concern.run(self)
  end
  