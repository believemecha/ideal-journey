class Blog < ApplicationRecord
    def index
        @blogs=Blog.all
    end
end
