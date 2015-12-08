# saucebot
My [Hubot](https://github.com/github/hubot/) for the [Slack](https://slack.com/) chat platform.

### Running saucebot using Docker

- Install Docker: https://docs.docker.com/installation/
- Install Docker Compose: https://docs.docker.com/compose/install/
- Modify the docker-compose.yml
    - Update Variables
        - HUBOT_YOUTUBE_API_KEY
        - HUBOT_SLACK_TOKEN
        - HUBOT_GOOGLE_CSE_ID
        - HUBOT_GOOGLE_CSE_KEY
        - HUBOT_SENTIMENTAL_QUIET
- Start everything up:
```docker-compose up -d```
