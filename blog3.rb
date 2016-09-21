class Blog
    @@all_blog_posts = []
    @@total_blog_posts = 0
    
    def self.add(thing)
        @@all_blog_posts << thing
        @@total_blog_posts += 1
    end
    def self.publish
        puts "There are #{@@total_blog_posts} new posts."
        @@all_blog_posts.each do |post|
        puts "Title:\n #{post.title}"
        puts "Content:\n #{post.content}"
        puts "Author:\n #{post.author}"
        puts "Created at:\n #{post.created_at}"
        end
    end
end

class BlogPost < Blog
    
    def self.create
        post = new
        puts "Enter title:"
        post.title=gets.chomp
        puts "Enter content:"
        post.content = gets.chomp
        puts "Enter author name:"
        post.author = gets.chomp
        time = Time.now
        post.created_at=time.month.to_s + "/" +  time.day.to_s + "/" + time.year.to_s
        post.save
        puts "Do you want to create another blog post? [Y/N]"
        create if gets.chomp.downcase == 'y'        
    end
    
    def title=(title)
        @title=title
    end
    def title
        @title
    end
    def author=(author)
        @author=author
    end
    def author
        @author
    end
    def created_at=(created_at)
        @created_at=created_at
    end
    def created_at
        @created_at
    end
    def content=(content)
        @content=content
    end
    def content
        @content
    end
    
    def save
        BlogPost.add(self)
    end
end
BlogPost.create
BlogPost.publish