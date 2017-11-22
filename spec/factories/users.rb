FactoryBot.define do
    # Define a basic devise user.
    factory :user do
        email "sampleuser@mail.com"
        full_name "Example User"
        nickname "User"
        password "example"
        password_confirmation "example"
        avatar "hereismyavatar"
        contact "hereismycontact"
        bio "thisismybio"
        location "Quezon City, Philippines"
        schoolwork "UPD"
    end
end
