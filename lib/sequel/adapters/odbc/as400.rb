# frozen-string-literal: true

require_relative '../shared/as400'

Sequel.synchronize do
  Sequel::ODBC::DATABASE_SETUP[:as400] = proc do |db|
    db.extend ::Sequel::AS400::DatabaseMethods
    db.extend_datasets ::Sequel::AS400::DatasetMethods
  end
end

