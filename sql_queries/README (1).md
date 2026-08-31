# SQL Queries — FC Barcelona Analysis

Kumpulan query SQL untuk menganalisis performa FC Barcelona menggunakan database `sports_league.sqlite`.

## 📁 Daftar Query

| File | Deskripsi |
|---|---|
| `FC_BARCELONA.sql` | Ringkasan statistik dasar tim (main, menang, seri, kalah, poin, gol) |
| `all_performance.sql` | Performa lengkap tim: posisi, hasil, poin, gol, dan form 5 laga terakhir |
| `winrate.sql` | Persentase kemenangan (win rate) tim |
| `squad.sql` | Daftar pemain di skuad beserta posisi, kebangsaan, dan tanggal lahir |
| `player_position.sql` | Jumlah pemain berdasarkan posisi |
| `performance_over_time.sql` | Performa tim per musim (time series) |
| `match_result.sql` | Perbandingan status skor babak pertama (unggul/seri/tertinggal) dengan hasil akhir |
| `comback_wins.sql` | Jumlah kemenangan comeback (tertinggal di babak pertama, menang di akhir) |
| `lost_FT.sql` | Jumlah pertandingan yang unggul di babak pertama tapi berakhir kalah |
| `total_cleansheet.sql` | Jumlah pertandingan tanpa kebobolan (clean sheet) |
| `average_goal_conceded.sql` | Rata-rata gol kebobolan per pertandingan |
| `goal_per_match.sql` | Rata-rata gol yang dicetak per pertandingan |
| `all_competitor.sql` | Klasemen penuh seluruh tim dalam satu liga dengan FC Barcelona |
| `points_gap.sql` | Selisih poin antara FC Barcelona dan pemuncak klasemen |
| `competitor.sql` | Rekap hasil pertandingan (menang/seri/kalah) melawan tiap lawan |
| `home_away.sql` | Perbandingan performa saat bermain kandang vs tandang |
| `attack_vs_defense.sql` | Perbandingan rata-rata gol dicetak vs gol kebobolan per laga |

## 🛠️ Cara Menjalankan

```bash
sqlite3 ../data/sports_league.sqlite < all_performance.sql
```

Atau paste isi file ke tab **Execute SQL** di DB Browser for SQLite / DBeaver.

> Semua query menargetkan tim **FC Barcelona** — ganti nilai `'FC Barcelona'` di klausa `WHERE` kalau ingin menganalisis tim lain.
