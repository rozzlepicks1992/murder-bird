# Murder Bird 🚁

A side-scrolling attack-helicopter shooter. Dodge terrain, gun down enemy
helicopters and jets, and survive to a score of **10,000** — then face the
boss, **Software Jesus**, aboard the *Murder Bird*.

## Controls

| Action | Keys |
| --- | --- |
| Move | Arrow keys or `WASD` |
| Shoot | `Spacebar` |
| Start / restart | `Spacebar` |

Touch is supported too: drag to fly, hold to fire.

## How it plays

- **Phase 1 — The run.** The world scrolls left to right and **gets faster the
  further you get**. Enemy helicopters fire homing rockets, jets streak past
  fast, and **tanks (ZSU-23-4 Shilkas) roll along the ground and fire aimed rockets
  at you** — their quad cannons track your helicopter and shoot in any direction. You can shoot the aircraft, tanks, and even the rockets.
- **Getting to the boss.** Just flying straight and surviving takes about **5
  minutes** to reach the boss. **Killing enemies gives you extra score** on top
  of that (helis +40, jets +50, tanks +75, rockets +10), so an aggressive run
  scores higher and reaches Software Jesus sooner.
- **Fuel cans.** A few red fuel cans float through each run. Fly into one to
  **get a life back** (up to a max of 5). If you're already full, it's worth
  bonus points instead.
- **Changing scenery.** As your score rises, the environment cross-fades through
  four biomes — **jungle → desert → snow → urban** — each with its own sky,
  ground, horizon and weather. The city (urban) is where **Software Jesus** shows up.
- **Phase 2 — The boss.** At 10,000 the scrolling stops and Software Jesus
  arrives in the Murder Bird (his name is painted on the tail boom). Keep
  moving in all directions and pour fire into him to drain his health bar.
- **Lives.** You start with **3** (max 5 with fuel cans). You lose one if you
  crash into a helicopter, jet, or tank, get hit by a rocket, or fly into the
  ground. Brief invincibility follows each hit.
- **Death / victory.** When the run ends you enter a callsign for the local
  **Top Guns** scoreboard, then the high-score screen appears.

Scores are stored in the browser via `localStorage`, so the board persists
between sessions on the same machine.

## Run it (Docker)

```bash
# from this folder
docker compose up --build
```

Then open <http://localhost:8080>.

Or with plain Docker:

```bash
docker build -t murder-bird .
docker run --rm -p 8080:80 murder-bird
```

## Run it without Docker

It's just static files, so any web server works:

```bash
python3 -m http.server 8080
# open http://localhost:8080
```

## Files

| File | Purpose |
| --- | --- |
| `index.html` | Page shell, canvas, and overlay screens |
| `style.css` | Cockpit HUD + menu styling |
| `game.js` | Game engine (rendering, physics, enemies, boss, scoreboard) |
| `Dockerfile` | Builds an nginx image serving the game |
| `nginx.conf` | Serving + caching rules |
| `docker-compose.yml` | One-command build & run |
