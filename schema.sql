-- Run this once in Supabase: SQL Editor > New query > paste > Run

create table if not exists public.trades (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  trade_date date not null default current_date,
  symbol text not null,
  side text not null check (side in ('long', 'short')),
  entry_price numeric not null,
  exit_price numeric not null,
  qty numeric not null,
  fees numeric not null default 0,
  notes text,
  created_at timestamptz not null default now()
);

-- Row Level Security: each user can only touch their own rows
alter table public.trades enable row level security;

create policy "own trades only" on public.trades
  for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
