class Field < ActiveRecord::Base
  FIELD_TYPES = [:short_answer, :textarea, # text fields; single or multi-line
                 # list-based response, corresponding to HTML elements
                 :check_container, :radio_container, :combo_container,
                 # one text entry in a list-based response
                 :option
                ]

  belongs_to :survey_schema
  belongs_to :field_group
  has_one :sub_field, :through => :fields # may be nil
end