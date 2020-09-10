# frozen_string_literal: true
#
# Sluggable concern for generate slugs across models
#
module Sluggable
  extend ActiveSupport::Concern

  included do
    include FriendlyId
    validates :slug,  presence: true, 
                      uniqueness: true, 
                      allow_nil: true
                      
    validates :suggested_url, allow_blank: true, 
                              uniqueness: { 
                                case_sensitive: false,
                                message: 'is already taken, leave blank to generate automatically'
                              }
    # friendly_id :slug_candidates, use: %i[slugged history]
    friendly_id :slugable_candidates, use: %i[slugged history]

    def slug_candidates
      [ :suggested_url, :name ]
    end

    def slugable_candidates
    return [@pending_slug] if @pending_slug.present?

      slug_candidates
    end

    def pending_slug
      slug
    end

    def pending_slug=(value)
      adjusted = value.blank? ? nil : normalize_friendly_id(value)
      @pending_slug = adjusted
      self.slug = nil
    end
    
    def should_generate_new_friendly_id?
      !slug? || will_save_change_to_suggested_url? || 
      will_save_change_to_name?
    end
  end
end

