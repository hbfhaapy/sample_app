FactoryGirl.define do
	# factory :user do
	# 	name "hbf"
	# 	email "huopo125@163.com"
	# 	password "foobar"
	# 	password_confirmation "foobar"
	# end

	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "elephant_#{n}@example.com" }
		password "foobar"
		password_confirmation "foobar"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Mark here"
		user
	end
end