class Policy < ApplicationRecord
    def to_param
        url_handle.parameterize
    end
end
