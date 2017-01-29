require 'firebase'
require 'rubygems'

base_uri = 'https://addressbook-api-glympe.firebaseio.com'
api_key = 'AIzaSyDOo2zkvX2Zy0Px97uzxXWUX0XdHd-aarg'

FIREBASE = Firebase::Client.new(base_uri, api_key)