class LandlordDatatable < AjaxDatatablesRails::ActiveRecord
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
   #include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator

  def view_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
          @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id:          { source: "Landlord.id" },
      fname:       { source: "Landlord.fname" },
      oname:       { source: "Landlord.oname" },
      email:       { source: "Landlord.email", searchable: false },
      status:      { source: "Landlord.status" },
    }
  end

  def data
    records.map do |record|
      {
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
            id:    record.id, 
            fname: record.fname, 
            oname: record.oname, 
            email: record.email, 
           status: record.status,
                
      }
    end
  end

  def get_raw_records
    # insert query here
        Landlord.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end