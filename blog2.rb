class Blog
    @@all_blog_posts = []
    @@total_blog_posts = 0
    
    def self.add(thing)
         @@all_blog_posts << thing
         @@total_blog_posts += 1
    end
    def self.all
        @@all_blog_posts
    end
    def self.publish
        @@all_blog_posts.each { |post|
            puts "Title:\n #{post.get_title}"
            puts "Content:\n #{post.get_content}"
            puts "Publish date:\n #{post.get_publish_date}"
            puts "Author:\n #{post.get_author}"
        }
    end    
end

class BlogPost < Blog
    def self.create
        post = new
        puts "Please enter a title for your blog post."
        post.set_title = gets.chomp
        puts "Enter the content for your blog post here:"
        post.set_content = gets.chomp
        
        time = Time.new
        post.set_publish_date = time.month.to_s + "/" +  time.day.to_s + "/" + time.year.to_s
        puts "Please provide author's name"
        post.set_author= gets.chomp
        post.save
        puts "Do you want to create another blog post? [Y/N]"
        create if gets.chomp.downcase == 'y'
    end
    
    def set_publish_date=(publish_date)
        @publish_date = publish_date
    end
    
    def get_publish_date
        return @publish_date
    end
    def set_title=(blog_title)
        @title= blog_title
    end
    def get_title
        return @title
    end
    
    def set_content=(blog_content)
        @content = blog_content
    end
    
    def get_content
        return @content
    end    
    
    def set_author=(blog_author)
        @author = blog_author
    end
    def get_author
        return @author
    end
    
    def save
        BlogPost.add(self)
    end
end
BlogPost.create
BlogPost.publish