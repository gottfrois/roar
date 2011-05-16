require 'roar/rails/controller_methods'
require 'roar/rails/representer_methods'

module Roar
  module Rails
    
  end
end

# FIXME: don't like monkey-patching:
# TODO: assure we don't overwrite anything here, as people might want to do things without AR/DM.

Roar::Representer::XML.class_eval do # FIXME: why in XML, only? #definition_class is defined in Representable.
  include Roar::Representer::Feature::ModelRepresenting
  include Roar::Representer::Feature::ActiveRecordMethods  # to_nested_attributes
  include Roar::Rails::RepresenterMethods
end
