class TenantDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "Tenant.id", cond: :eq },
      fname: { source: "Tenant.fname", cond: :like },
      lname: { source: "Tenant.lname", cond: :like },
      address: { source: "Tenant.address", cond: :like },
    }
  end

  def data
    records.map do |record|
      {
        # example:
         id: record.id,
         fname: record.fname,
         lname: record.lname,
         address: record.address,
      }
    end
  end

  def get_raw_records
    # insert query here
    Tenant.all
  end

end
