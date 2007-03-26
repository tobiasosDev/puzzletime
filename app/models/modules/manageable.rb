# A Module to be mixed in by classes that may be managed by the ManageModule.
# 
# All methods are on the class side, so use 'extend Manageable' to use this Module.
module Manageable
  
  # Lists all entries in the database of the corresponding class.
  def list(options = {})
    options[:order] ||= orderBy
    find(:all, options)  
  end  
  
  # Array with the German article, singular and plural name of the class.
  # Must overwrite in mixin class
  def labels
    ['Der', 'Eintrag', 'Einträge']
  end
  
  # Name of the class in German.  
  def label
    labels[1]
  end  
  
  # Plural name of the class in German.
  def labelPlural
    labels[2]
  end
  
  # Article of the class in German
  def article
    labels[0]
  end
  
  # Data type of the field col of the class.
  def columnType(col)
    columns_hash[col.to_s].type
  end
    
  # Field sorting order for listing all entries.  
  def orderBy
    'name'
  end
    
end