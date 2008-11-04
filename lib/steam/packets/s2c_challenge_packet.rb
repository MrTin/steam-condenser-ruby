# This code is free software; you can redistribute it and/or modify it under the
# terms of the new BSD License.
#
# Copyright (c) 2008, Sebastian Staudt
#
# $Id: a2a_serverquery_getchallenge_response_packet.rb 97 2008-08-07 07:25:49Z koraktor $

require "steam/packets/steam_packet"

# The S2C_CHALLENGE_Packet class represents the response
# to a A2S_SERVERQUERY_GETCHALLENGE request send to the server.
class S2C_CHALLENGE_Packet < SteamPacket
  
  # Creates a AS2C_CHALLENGE response object based on the data received.
  def initialize(challenge_number)
    super S2C_CHALLENGE_HEADER, challenge_number
  end
  
  # Returns the challenge number received from the server
  def get_challenge_number
    return @content_data.rewind.get_long
  end
end