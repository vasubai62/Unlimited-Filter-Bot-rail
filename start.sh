if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/vasubai62/Unlimited-Filter-Bot-rail.git /Unlimited-Filter-Bot-rail
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Unlimited-Filter-Bot-rail
fi
cd /Unlimited-Filter-Bot-rail
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
