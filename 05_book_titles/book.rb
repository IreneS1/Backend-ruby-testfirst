class Book
attr_accessor :title
    def title
        @title
    end

    def title=(title)
        no_cap = ["if", "or", "in", "a", "and", 'an', "the", "of", "to"]
      new_title = title.split(' ').each_with_index.map do |x, i|
          unless i != 0 && no_cap.include?(x)
            x.capitalize
          else
            x
          end
      end

      @title = new_title.join(' ')
  end
end
