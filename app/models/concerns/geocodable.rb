module Geocodable
  extend ActiveSupport::Concern

  included do
    geocoded_by :location
    after_validation :geocode, if: ->(obj){ obj.location.present? && obj.location_changed? }
    reverse_geocoded_by :latitude, :longitude
    after_validation :reverse_geocode, if: ->(obj){ obj.latitude.present? && obj.latitude_changed? && obj.longitude.present? && obj.longitude_changed? }
  end

  def full_address
    [address, city, state, country].compact.join(', ')
  end

  def address
    street_address
  end

  def address=(value)
    self.street_address = value
  end

  def country_code
    ISO3166::Country.find_country_by_name(country)&.alpha2
  end

  def country_code=(value)
    self.country = ISO3166::Country.find_country_by_alpha2(value)&.name
  end

  def state_code
    states_for_country[state]&.first
  end

  def state_code=(value)
    self.state = states_for_country.invert[value]
  end

  def states_for_country
    ISO3166::Country.find_country_by_name(country)&.states || {}
  end

  def coordinates
    [latitude, longitude]
  end

  def coordinates=(value)
    self.latitude, self.longitude = value
  end

  def distance_to(other)
    Geocoder::Calculations.distance_between(coordinates, other.coordinates)
  end
end
