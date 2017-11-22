### An Airbnb clone

Here's take two.

## Updates

- 01 Aug 2017 -- My first commit. I've finished setting up Devise and OmniAuth for Facebook, Carrierwave multiple uploads (although I'm having issues with this big chunk of text showing up after the photos....)

- 02 Aug 2017 -- Reinstalled Carrierwave for the 3rd time and got rid of that bug(?) I kept running into. Now it works great! I had to redo a few things cause I realized I had been missing some important parts, but it's all good cause I was able to fix the user profiles (however I still haven't been able to allow non-Facebook user to upload their own avatars... maybe a separate uploader? We'll see). I think I've made pretty decent progress on this one.

- 03 Aug 2017 -- I now have the review system up and running! I wasn't able to do much today either, but I think I'm making pretty good time considering I only wrote code for like, an hour today hahahahaha tbf I worked on this for around two hours before bed, and I managed to get the profiles up and running, so that's good.

- 04 Aug 2017 -- More styling, more cute little images. I've managed to set a default img for users without a Facebook account, however I find that uploading your own avatar fucks up those who have Facebook Omniauth, so I haven't changed that part yet, might not do it until I absolutely have to. Today I worked mostly on designing the indexes (for the bnbrooms and the users) but I've yet to redesign the Devise views. Might just make a boring old standardized design for all those forms. I plan to adding maps later today tho.

- 07 Aug 2017 -- I installed the Geocoder gem to add maps to my app. So far, things are looking good! I plan to add more styling, fix the rows and columns, maybe make the index map stick? Not sure what I'm gonna do with that yet, but let's see!

- 08 Aug 2017 -- Not much progress today. It was a long-overdue rest day.

- 09 Aug 2017 -- I've been able to finish a lot, I think! Even without a real messaging platform, I've been able to make do with a robust reservation system. I decided to just put the user's own rooms and the rooms he plans to book all in one page (his user profile) instead of making separate pages. I feel like I should have some sort of navbar or tabs thing? Maybe a little bit of smooth scrolling too. Hmm. Anyway, I managed to add a little bit more styling here and there. Looks like the payment system (PayPal?) will have to be for tomorrow.

- 10 Aug 2017 -- Seeing as PayPal might be too big of a task for us, we've decided to move on from this project and start a new one.

--------

### TODO

- Go back to this project eventually to insert a real, working PayPal or whatever payment platform.


## INTERNSHIP UPDATE (Nov 2017)
I've been working on this while I'm interning at Proudcloud, so I've been adding Rspec testing to it. So far, so good.
