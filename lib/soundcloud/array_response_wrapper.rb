module SoundCloud
  class ArrayResponseWrapper < Array
    attr_reader :response

    def initialize(response = [])
      super response
      @response = response
      mashes = response.map do |object|
        Hashie::Mash.new(object)
      end
      replace(mashes)
    end
  end
end
