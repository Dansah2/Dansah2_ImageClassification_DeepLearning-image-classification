# Image classification environment set-up

Using this fork will get you up and running in a codespace in just a few minutes.

## 1. Get a Kaggle account

The dataset is hosted on Kaggle. To download it you need a free account. It's easy to set up via the following link:

[Login or Register | Kaggle](https://www.kaggle.com/account/login?phase=startRegisterTab)

After setting up your account you will need to verify with a phone number to use the Kaggle API. You can do this from the *settings* tab in the menu revealed by clicking your profile picture at the top right of any Kaggle page.

Once you are registered and logged in:

- Go to the [Dogs vs Cats competition](https://www.kaggle.com/competitions/dogs-vs-cats) page
- Go to the 'Data' tab
- Scroll down and click 'Join competition'

Now, you need to generate and save an API access token so that you can download the dataset from within a codespace:

- From the kaggle homepage, click on your profile picture in the upper right
- Select 'Settings'
- Scroll down, under API, click 'Create New Token'
- Click 'Continue'
- Save the key file on you local machine

The contents of the file should look like this:

```json
{"username":"your-user-name","key":"a-bunch-of-letters-and-numbers"}
```

## 2. Start a codespace

Once you have your Kaggle username and API key, fork this repository and start a Codespace as you normally would.

## 3. Add your Kaggle API key

From your codespace, open the .env file and add your Kaggle username and key from the `kaggle.json` file you downloaded to your computer from the Kaggle site earlier.


```bash
export KAGGLE_USERNAME=your-user-name
export KAGGLE_KEY=a-bunch-of-letters-and-numbers
```

Then, source the environment file to export the environment variables to the codespace shell:

```bash
source .env
```

Now, your username and key are stored in `KAGGLE_USERNAME` and `KAGGLE_KEY` respectively. Placing them in environment variables makes them available to any application running in the codespace. Test it by running the following command in the terminal:

```bash
echo $KAGGLE_USERNAME
```

It should print your Kaggle username.

## 4. Download and prepare the data

I have placed a series of commands to download and organize the images in a shell script for you. To use the script, you need to make it executable and then run it. From you codespace terminal run the following commands:

```bash
sudo chmod u+x ./get_data.sh
./get_data.sh
```

The script downloads the data from Kaggle, decompresses it and moves the training cats and dogs into separate directories.

Easy! Now we can work with the data in a Jupyter notebook. Open `src/mvp.ipynb` to get started.
