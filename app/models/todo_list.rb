class TodoList < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :todo_items, dependent: :destroy
    #because the relationship is a todo list has many todo items

    def self.tagged_with(name)
        Tag.find_by!(name: name).todo_lists
      end
    
      def self.tag_counts
        Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
      end
    
      def tag_list
        tags.map(&:name).join(', ')
      end
    
      def tag_list=(names)
        self.tags = names.split(',').map do |n|
          Tag.where(name: n.strip).first_or_create!
        end 
      end
end
