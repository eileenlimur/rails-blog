module Visible #this method applies to individual instance
    extend ActiveSupport::Concern #allows us to include validations called at class level

    VALID_STATUSES = ['public', 'private', 'archived']

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end

    class_methods do
        def public_count
            where(status: 'public').count
        end
    end

    def archived?
        status == 'archived'
    end
end