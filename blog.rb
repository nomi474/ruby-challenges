class Blog 
    @@blog_hash = []
    @@total_blog_posts =0
    
    def initialize
        @@total_blog_posts += 1
    end
    
    def self.publish     
        @@blog_hash.each {| key, value|  puts "#{key}:"
            (0..value.size).each {|text|
                puts "#{value[text]}"
            }
             puts "There are #{value.size.to_s} posts in this blog."
        }
    end
end
class BlogPost < Blog      
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
end

    post = BlogPost.new
    title_array = Array.new
    content_array = Array.new
    publish_date_array = Array.new
    author_array = Array.new
begin
    puts "Do you want to create another blog post? [Y/N]"
    response = gets.chop
        
    if response.capitalize == 'Y'
        puts "Please enter a title for your blog post."
        post.set_title = gets.chomp
        puts "Enter the content for your blog post here:"
        post.set_content = gets.chomp
        
        time = Time.new
        publish_date = time.month.to_s + "/" +  time.day.to_s + "/" + time.year.to_s
        puts "Published date: #{publish_date}"  
        puts "Please provide author's name"
        post.set_author= gets.chomp
        puts "response.capitalize #{response.capitalize}"
        title_array << post.get_title
        content_array << post.get_content
        publish_date_array << publish_date
        author_array << post.get_author
        @@blog_hash = {"Title" => title_array, "Content" => content_array,
                "Published date" => publish_date_array, "Author" => author_array
                }
    end
end while response.capitalize == 'Y'

BlogPost.publish
