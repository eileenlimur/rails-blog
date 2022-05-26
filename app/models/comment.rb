class Comment < ApplicationRecord
    belongs_to :article

    VALID_STATUSES = ['private', 'public', 'archived']

    validates :status, inclusion: { in: VALID_STATUSES }

    def archived?
        status =='archived'
    end
end
