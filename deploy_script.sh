cd /var/www/html/Prototip/mainapp

# Pull the latest changes from the repository
sudo git pull origin master

# Activate the virtual environment
source venv/bin/activate

# Install any new dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py makemigrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

sudo chown -R www-data:www-data /var/www/html/Prototip/mainapp/staticfiles
sudo chmod -R 755 /var/www/html/Prototip/mainapp/staticfiles


# Restart the web server
sudo systemctl restart apache2

# Print a message indicating successful deployment
echo "Deployment completed successfully."
