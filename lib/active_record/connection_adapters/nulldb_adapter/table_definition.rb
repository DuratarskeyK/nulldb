class ActiveRecord::ConnectionAdapters::NullDBAdapter

  TableDefinition = ActiveRecord::ConnectionAdapters::TableDefinition.dup
  TableDefinition.instance_eval do
    define_method :jsonb, -> {}
  end

end
