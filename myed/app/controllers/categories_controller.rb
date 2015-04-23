class CategoriesController < ApplicationController

  def create
    @category = Category.find(params[:id])
    @story = @category.stories.create(story_params)
    redirect_to category_path(@category)
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

    if @category.id == 1
      @links = [
        {link: "http://www.peacecorps.gov", site: "Peace Corps"},
        {link: "http://www.idealist.org/search/v2/?search_type=volop", site: "Idealist.org"},
        {link: "https://www.volunteermatch.org/", site: "Volunteer Match"},
      ]
    elsif @category.id == 2
      @links = [
        {link: "http://www.bbbs.org/site/c.9iILI3NGKhK6F/b.5962335/k.BE16/Home.htm", site: "Big Brothers Big Sisters of America"},
        {link: "http://www.forbes.com/sites/work-in-progress/2011/06/18/how-to-start-a-mentorship-relationship/", site: "'How to Start a Mentorship Relationship' - Article from 'Forbes'"},
        {link: "https://www.volunteermatch.org/", site: "Volunteer Match"}
      ]
    elsif @category.id == 3
      @links = [
        {link: "https://generalassemb.ly/", site: "General Assembly"},
        {link: "http://www.nationaljournal.com/next-america/education/this-isn-t-your-dad-s-vocational-education-20131216", site: "'This Isn't Your Dad's Vocational School' - Article from 'National Journal'"},
        {link: "http://www.trade-schools.net/", site: "Trade-Schools.net"}
      ]
    elsif @category.id == 4
      @links = [

      ]
    elsif @category.id == 5
      @links = [
        {link: "http://www.usatoday.com/story/news/2015/03/23/train-for-school-and-career/22400111/", site: "'Closing the Gap Between School and Work' - 'USA Today'"},

      ]
    end
  end

private
  def story_params
    params.require(:story).permit(:heading, :body, :profile_id)
  end

end
