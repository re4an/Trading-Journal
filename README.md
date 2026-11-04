# Trading Journal

A simple web app to log trades and track performance. Login and cloud sync, with a private journal for every user.

Live demo: <tradingjournal.netlify.app>

## Features
- Log trades: date, symbol, long/short, entry, exit, quantity, fees, notes
- Stats: net P&L, win rate, average win/loss, profit factor
- Equity curve chart
- CSV export
- Email login; Row Level Security keeps each user's data private
- Works on mobile, supports light and dark mode

## Tech
- HTML / CSS / vanilla JavaScript (single file)
- Supabase (auth + Postgres)
- Netlify (hosting)

## Setup
1. Create a free project at [supabase.com](https://supabase.com).
2. In the SQL Editor, run `schema.sql`.
3. In Project Settings > API, copy the Project URL and the **anon public** key.
4. Paste them at the top of the script in `index.html`.
5. Open `index.html` in a browser, or deploy the folder to Netlify.

Optional: in Supabase Auth settings, turn off "Confirm email" for quicker testing.

## Security note
The anon key is meant to be public, and Row Level Security (enabled in `schema.sql`) is what protects the data. Never commit the `service_role` key.

## Roadmap
- [ ] Installable PWA
- [ ] Tags and setup filters
- [ ] Monthly P&L breakdown

## License
MIT
