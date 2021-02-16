class Backer

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects 
        ProjectBacker.all.select {|project| project.backer == self}
    end

    def backed_projects
        projects.map do |back|
            back.project
        end
    end

end