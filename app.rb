#!/bin/env ruby
# encoding: utf-8

require 'sinatra'
require 'sinatra/activerecord'

set :database, 'sqlite3:///database.db'


=begin
class ShortenedUrl < ActiveRecord::Base
  validates_uniqueness_of :url
  validates_presence_of :url
  #validates_format_of :url, :with => /^\b((?:https?:\/\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’]))$/
  validates_format_of :url, :with => /.*https:.*/
end



get '/'  do
	haml :index
end


post '/' do
	@short_url = ShortenedUrl.find_or_create_by_url(params[:url])
	@short_url = ShortenedUrl.find_or_create_by_url(params[:url])
	if @short_url.valid?
		haml :success
	else
		haml :index
	end
end


get '/:shortened' do
	short_url = ShortenedUrl.find(params[:shortened])
	redirect short_url.url
end
=end


class Post < ActiveRecord::Base
end


class User <ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation

	has_secure_password

	before_save { |user| user.email = email.downcase }

	validates :name, presence: true, length: {maximum, 30}, uniqueness: true
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

	validates :password, presence: true, length: {minimum: 6}
	validates :password_confirmation, presence: true
end
