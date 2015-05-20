require 'rails_helper'

describe Photo do
  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:photo_url) }
  it { should validate_presence_of(:photo_url) }
  it { should belong_to(:user) }
end