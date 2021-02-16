class Project

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projects
        ProjectBacker.all.select {|backer| backer.project == self}
    end

    def backers
        projects.map do |project|
            project.backer
        end
    end


end