#!/bin/bash

#install dependancies 
pipenv install

# Start PostgreSQL server
echo "Starting PostgreSQL server..."
sudo service postgresql start  # Adjust this command based on your environment

# Deploy application code
echo "Deploying application code..."
pipenv install
echo "Application code deployed successfully."

# Seed makersbnb database
echo "Seeding PostgreSQL makersbnb database..."
PGPASSWORD=CG1HgNTJkkqN3xLs2oCQask7sI4DvF0h psql -h dpg-cnvn48i0si5c73fh0k6g-a.oregon-postgres.render.com -U makersbnb_7y56_user makersbnb_7y56
echo "PostgreSQL makersbnb database seeded successfully."
