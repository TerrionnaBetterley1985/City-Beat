# A ruby program to create a news and media service in one file

#Initialize the program

# class News_Service
  
    def initialize
      @topics = []
      @top_stories = []
      @local_events = []
      @stories = []
    end
  
#Create a method to add topics
  
    def add_topics(topics)
      @topics.push(*topics)
    end
  
#Create a method to add top stories

    def add_top_stories(topics, stories)
      topics.each do |topic|
        @top_stories << [topic, stories]
      end
    end

#Create a method to add local events

    def add_local_events(events)
      @local_events.push(*events)
    end
  
#Create a method to add stories

    def add_stories(stories)
      @stories.push(*stories)
    end
  
#Accessors to view local events, top stories and stories
  
    def view_local_events
      @local_events
    end
  
    def view_top_stories
      @top_stories
    end
  
    def view_stories
      @stories
    end
  
#Finalize the program

end

#Create an instance of the class

news_service = News_Service.new
 
#Create topics

topics = ["sports", "politics", "economy", "culture", "entertainment"]

#Add topics to the news service

news_service.add_topics(topics)

#Create stories and events for the topics

sports_stories = ["World Cup Victory", "Olympic Medal Success", "Record Breaking Marathon"]
politics_stories = ["Election Results", "Political Tension", "Scandals"]
economy_stories = ["Interest Rate Increase", "Unemployment Rises", "Inflation Adjustments"]
culture_stories = ["Global Awareness Week", "New Art Movement", "Designing a Sustainable Future"]
entertainment_stories = ["Bafta Awards", "Grammy Nominations", "Summer Blockbuster Hits"]
local_events = ["Charity Concert", "Community Fair", "Food Festival"]

#Add stories and events to the news service

news_service.add_top_stories(topics, sports_stories)
news_service.add_top_stories(topics, politics_stories)
news_service.add_top_stories(topics, economy_stories)
news_service.add_top_stories(topics, culture_stories)
news_service.add_top_stories(topics, entertainment_stories)
news_service.add_local_events(local_events)

#View stories and events

news_service.view_local_events
news_service.view_top_stories
news_service.view_stories