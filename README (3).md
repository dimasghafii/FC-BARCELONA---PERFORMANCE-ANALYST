# FC Barcelona Business Analysis (SQL)

Proyek analisis performa **FC Barcelona** menggunakan SQL, berdasarkan database liga sepak bola yang mencakup data tim, pemain, pertandingan, klasemen, dan skor selama beberapa musim.

## 📂 Struktur Repository

```
nama-repo/
├── README.md                          # File ini
├── sql/                                # Kumpulan query analisis
│   ├── README.md
│   ├── FC_BARCELONA.sql
│   ├── all_performance.sql
│   ├── winrate.sql
│   ├── squad.sql
│   ├── player_position.sql
│   ├── performance_over_time.sql
│   ├── match_result.sql
│   ├── comback_wins.sql
│   ├── lost_FT.sql
│   ├── total_cleansheet.sql
│   ├── average_goal_conceded.sql
│   ├── goal_per_match.sql
│   ├── all_competitor.sql
│   ├── points_gap.sql
│   ├── competitor.sql
│   ├── home_away.sql
│   └── attack_vs_defense.sql
├── data/
│   ├── sports_league.sqlite            # Database utama
│   └── README_dataset.md               # Dokumentasi skema database
└── FC_Barcelona_Business_Analysis.xlsx # Laporan/ringkasan analisis
```

## 📊 Tentang Dataset

Database `sports_league.sqlite` berisi data 5 liga sepak bola dengan 10 tabel: `leagues`, `seasons`, `teams`, `players`, `coaches`, `referees`, `stadiums`, `matches`, `scores`, dan `standings`. Total mencakup 96 tim, 3.150 pemain, dan 1.752 pertandingan. Detail lengkap skema & relasi antar tabel ada di `data/README_dataset.md`.

## 🔍 Tentang Query SQL

Folder `sql/` berisi 17 query yang menjawab pertanyaan-pertanyaan analisis bisnis seputar performa FC Barcelona:

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

Detail & cara jalanin tiap query ada di `sql/README.md`.

## 📈 Laporan Analisis

`FC_Barcelona_Business_Analysis.xlsx` berisi ringkasan hasil analisis dalam format spreadsheet, cocok buat presentasi atau laporan non-teknis.

## 🛠️ Cara Menggunakan

1. Clone repository:
   ```bash
   git clone https://github.com/username/nama-repo.git
   cd nama-repo
   ```
2. Buka database dengan SQLite:
   ```bash
   sqlite3 data/sports_league.sqlite
   ```
3. Jalankan query, contoh:
   ```bash
   sqlite3 data/sports_league.sqlite < sql/all_performance.sql
   ```
   Atau paste isi file `.sql` ke tools seperti **DB Browser for SQLite** atau **DBeaver**.

## 🧰 Teknologi

- **SQL (SQLite)** — query & analisis data
- **Excel** — pelaporan tambahan

## ✍️ Author

Dibuat sebagai bagian dari analisis performa bisnis/olahraga FC Barcelona.
