class ProjectBacker

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def project
        @project
    end

    def backer
        @backer
    end

    def self.all
        @@all
    end

end