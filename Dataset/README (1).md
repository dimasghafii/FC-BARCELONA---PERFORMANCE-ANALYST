# FC Barcelona Business Analysis (SQL)

Kumpulan query SQL untuk menganalisis performa **FC Barcelona** menggunakan database liga sepak bola (`sports_league.sqlite`). Proyek ini mencakup analisis skuad pemain, performa tim per musim, statistik pertandingan, hingga perbandingan dengan kompetitor di liga.

## 📂 Dataset

- `sports_league.sqlite` — database utama berisi tabel `teams`, `players`, `standings`, `seasons`, `matches`, `scores`, `leagues`, `coaches`, `referees`, dan `stadiums`.
- `FC_Barcelona_Business_Analysis.xlsx` — ringkasan/laporan analisis dalam format spreadsheet.

## 📁 Struktur Query

| File | Deskripsi |
|---|---|
| `all_performance.sql` | Ringkasan performa tim (posisi, main, menang, seri, kalah, poin, gol, form) |
| `winrate.sql` | Persentase kemenangan (win rate) tim |
| `squad.sql` | Daftar pemain di skuad beserta posisi, kebangsaan, dan tanggal lahir |
| `player_position.sql` | Jumlah pemain berdasarkan posisi |
| `performance_over_time.sql` | Performa tim per musim (time series) |
| `match_result.sql` | Analisis status skor babak pertama (leading/draw/losing HT) dan hasil akhir |
| `comback_wins.sql` | Jumlah kemenangan comeback (tertinggal di babak pertama, menang di akhir) |
| `lost_FT.sql` | Jumlah pertandingan yang unggul di babak pertama tapi kalah di akhir |
| `total_cleansheet.sql` | Jumlah pertandingan clean sheet (tanpa kebobolan) |
| `average_goal_conceded.sql` | Rata-rata gol kebobolan per pertandingan |
| `goal_per_match.sql` | Rata-rata gol yang dicetak per pertandingan |
| `all_competitor.sql` | Klasemen seluruh tim dalam satu liga dengan FC Barcelona |
| `points_gap.sql` | Selisih poin antara FC Barcelona dan pemuncak klasemen |
| `competitor.sql` | Rekap hasil pertandingan (menang/seri/kalah) melawan tiap lawan |
| `home_away.sql` | Perbandingan performa saat bermain kandang vs tandang |
| `attack_vs_defense.sql` | Perbandingan rata-rata gol dicetak vs gol kebobolan |
| `FC_BARCELONA.sql` | Ringkasan statistik dasar tim dari tabel standings |

## 🛠️ Cara Menggunakan

1. Clone repository ini:
   ```bash
   git clone https://github.com/username/nama-repo.git
   cd nama-repo
   ```
2. Buka database dengan SQLite:
   ```bash
   sqlite3 sports_league.sqlite
   ```
3. Jalankan salah satu file query, contoh:
   ```bash
   sqlite3 sports_league.sqlite < all_performance.sql
   ```
   atau copy-paste isi file `.sql` ke tools seperti DB Browser for SQLite, DBeaver, atau sejenisnya.

## 📊 Teknologi

- SQL (SQLite)
- Excel untuk pelaporan tambahan

## ✍️ Author

Dibuat sebagai bagian dari analisis performa bisnis/olahraga FC Barcelona.
