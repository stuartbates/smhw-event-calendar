# smhw-event-calendar

## Features

- On /events page, we need to have a weekly calendar highlighting today. We need to be able to create an event which has start and end dates and a description.
- The created events should instantly show on the calendar with an indicator on start date column and another one for the end date column. An image with ideal interface is shown on the page.
- Events should be saved in a backend store without refreshing the page.
- You may use any gems/plugins.
- Commit changes to git often with descriptive messages.
- This should not take more than 2 hours.

## Setup

## Review

I've generally tried to commit often so hopefully you can appreciate the 
outside-in nature of the development process. I haven't used Cucumber as 
I only tend to use that when working directly with clients. There's feature 
specs that drill through the whole user journey supported by controller
and model specs.

You can lint all factories and run the test suite by simply running:

    rake

Or if you just want to run the specs:

    bin/rspec
    
A few thoughts:

- I decided to pass the data through to JS on the page using a simple view helper. Equally could have:
 - Used gon which might be preferable with lots of variables being rendered or polled continuously 
 - Passed a URL as an option to fullcalendar during initialisation to fetch events from
- I've opted to override the as_json method which is implicitly called during render to ensure only white-listed attributes are exposed.
 - However for more complex responses I might have considered Active Model Serializers instead for greater flexibility. 