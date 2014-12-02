# Slack Shuffle

This is an integration I build for Slack. When somebody types ```/shuffle```, it returns a list of team members shuffled for our stand up meeting order.

![how it works](http://i.imgur.com/qt5z59C.gif)

## Adding it to your team's Slack

  1. Clone this repository

  2. Copy and rename the ```data.yml.example``` file to ```data.yml ```.

  3. Add your own team members as the value of the ```team_members``` key.

  4. [Create an Incoming WebHook](https://my.slack.com/services/new/incoming-webhook) (You'll have to choose a channel but the list will be posted to whatever channel the command was ran)

  5. Copy the ```Webhook URL``` provided under ```Setup Instructions``` and add it to ```data.yml``` as the value of the key ```url```.

    ![Copy the URL provided](http://i.imgur.com/hc04yl0.png)

  6. Create a [Heroku](http://heroku.com) app and upload the code.

  7. [Create a Slash Command](https://my.slack.com/services/new/slash-commands) (we use ```/shuffle```, use whatever works better for you)

  8. Add the Heroku URL for your app to ```URL``` under ```Integration Settings``` and click on ```Save Integration```

    ![Add your heroku URL](http://i.imgur.com/niAEpRf.png)

  9. You can now use the command you added on step 7 on any Slack channel.

## License

[MIT](LICENSE)
