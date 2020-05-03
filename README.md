# gtm-playground

I'd like to find out the optimal solution with multiple trigger and tag set up. Unfortunately some edge cases were not really clear by looking at the interface and might lead to misleading consequences.

# Where can I see it running?

Just go to the page here to see my findings:
https://nexusventuri.github.io/gtm-playground/

# I would like to run it locally as I want to experiment

Sure, there are 2 parts to run it locally:

1. Run the page locally
2. Create a new GTM container

## Run the page locally

Clone this repository, e.g. from the command line run:
`$ git clone git@github.com:nexusventuri/gtm-playground.git`

Install a simple http server like:
https://www.npmjs.com/package/http-server
and in the project folder run 
`http-server .`

With this set up you will be able to see the page running on your machine but it will use my GTM container setting.

To change your GTM set up and play around with other options continue reading ;)

## Create a new GTM container

- Sign up on your google account
- Go to https://tagmanager.google.com 
- If you already have an account you should be able to create an empty container (I believe in you!).
- On the new empty container go on Admin -> Import container 
- Load the gtm-config.json file you can find in this project folder. 
- After doing so run `$ replace-gtm-tag.sh 'GTM-XXXXX'` on the project folder where GTM-XXXXX is the id for your newly created container

## Fork the repository

If you want to fork and push changes in your own repository I suggest to: 
- Export your gtm setting to the gtm-config.json file
- Use `anonymize_gtm_config.sh` to replace accountId and containerId with dummy ones from the file... You never know.

Stay safe and happy coding :)

