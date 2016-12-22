class ActiveRecord::ConnectionAdapters::NullDBAdapter

  TableDefinition = ActiveRecord::ConnectionAdapters::TableDefinition.dup
  TableDefinition.instance_eval do
    define_method :method_missing, ->(*a) {}
  end

end
