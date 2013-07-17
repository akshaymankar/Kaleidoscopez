class CommandLine < Source
  field :image_url
  def fetch_items(n)
    Item.where(:source => self)
  end

  def read_items
    2.times do |i|
      string = gets
      create_item(string)
    end
  end

  def import_from_web(text)
    create_item(text)
  end

  private
  def create_item(string)
    Item.create(
          :title => string,
          :author => "Dubinsky Dee Soares",
          :source => self,
      )
  end
end
