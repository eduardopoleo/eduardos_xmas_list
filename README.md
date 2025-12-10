# 🎄 Eduardo's Christmas Wishlist

A Rails application where friends and family can view and claim Christmas gift items.

## Features

- View Christmas wishlist items with images, descriptions, and prices
- Claim/unclaim gifts with a simple toggle button
- Claimed items are grayed out to show they've been taken
- No login required - perfect for family sharing
- Real-time updates using Turbo Frames (Rails morphing)

## Tech Stack

- Ruby on Rails 8.0
- Turbo Rails for interactivity
- SQLite (development) / PostgreSQL (production)
- Tailwind CSS for styling

## Local Development

1. Install dependencies:
```bash
bundle install
```

2. Setup database:
```bash
bin/rails db:migrate
bin/rails db:seed
```

3. Start the development server:
```bash
bin/dev
```

4. Visit http://localhost:3000

## Deploying to Render.com

### Prerequisites

1. A Render.com account
2. Your Rails master key from `config/master.key`

### Deployment Steps

1. **Push your code to GitHub:**
```bash
git add .
git commit -m "Ready for deployment"
git push origin main
```

2. **Connect to Render:**
   - Go to https://render.com and sign in
   - Click "New +" → "Blueprint"
   - Connect your GitHub repository
   - Render will automatically detect the `render.yaml` file

3. **Set Environment Variables:**
   - In your Render dashboard, go to your web service settings
   - Add environment variable:
     - Key: `RAILS_MASTER_KEY`
     - Value: (paste content from `config/master.key`)

4. **Deploy:**
   - Render will automatically build and deploy your app
   - The database will be created and seeded automatically
   - Your app will be available at: `https://eduardo-xmas-list.onrender.com`

### Important Notes

- The first deploy may take 5-10 minutes
- Free tier services spin down after inactivity (first request may be slow)
- Database persists between deploys
- To update items, modify `lib/items.json` and run `bin/rails db:seed` in Render console

## Managing Items

Items are stored in `lib/items.json`. To add or update items:

1. Edit `lib/items.json`
2. Run `bin/rails db:seed` to update the database
3. In production, use Render's console or redeploy

## License

Personal project - © 2025
