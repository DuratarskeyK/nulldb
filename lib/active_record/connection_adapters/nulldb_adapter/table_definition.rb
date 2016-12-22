class ActiveRecord::ConnectionAdapters::NullDBAdapter

  TableDefinition = ActiveRecord::ConnectionAdapters::TableDefinition.dup
  TableDefinition.instance_eval do
    define_method :jsonb, ->(*a) {}
    define_method :json, ->(*a) {}
  end

end
