# Dataset: sports_league.sqlite

Database SQLite berisi data liga sepak bola, mencakup 5 liga, tim, pemain, jadwal pertandingan, hasil skor, dan klasemen selama beberapa musim.

## 📊 Ringkasan Tabel

| Tabel | Jumlah Baris | Deskripsi |
|---|---|---|
| `leagues` | 5 | Daftar liga (nama, negara, slot Champions League/Europa League/degradasi) |
| `seasons` | 5 | Daftar musim per liga |
| `teams` | 96 | Data tim (nama, tahun berdiri, stadion, liga, pelatih) |
| `players` | 3.150 | Data pemain (nama, posisi, tanggal lahir, kebangsaan, tim) |
| `coaches` | 96 | Data pelatih tiap tim |
| `referees` | 132 | Data wasit |
| `stadiums` | 94 | Data stadion (nama, lokasi, kapasitas) |
| `matches` | 1.752 | Data pertandingan (musim, matchday, tim kandang/tandang, pemenang, tanggal) |
| `scores` | 1.752 | Skor tiap pertandingan (full time & half time, kandang/tandang) |
| `standings` | 96 | Klasemen tiap tim per musim (posisi, main, menang, seri, kalah, poin, gol, form) |

## 🧩 Skema & Relasi Tabel

### `leagues`
| Kolom | Tipe | Keterangan |
|---|---|---|
| league_id | INTEGER | Primary key |
| name | TEXT | Nama liga |
| country | TEXT | Negara |
| country_id | INTEGER | ID negara |
| icon_url | TEXT | Logo liga |
| cl_spot | INTEGER | Jumlah slot Liga Champions |
| uel_spot | INTEGER | Jumlah slot Liga Europa |
| relegation_spot | INTEGER | Jumlah slot degradasi |

### `seasons`
| Kolom | Tipe | Keterangan |
|---|---|---|
| season_id | INTEGER | Primary key |
| league_id | INTEGER | FK → leagues.league_id |
| year | TEXT | Tahun/musim |

### `teams`
| Kolom | Tipe | Keterangan |
|---|---|---|
| team_id | INTEGER | Primary key |
| name | TEXT | Nama tim |
| founded_year | REAL | Tahun berdiri |
| stadium_id | INTEGER | FK → stadiums.stadium_id |
| league_id | INTEGER | FK → leagues.league_id |
| coach_id | INTEGER | FK → coaches.coach_id |
| cresturl | TEXT | Logo tim |

### `players`
| Kolom | Tipe | Keterangan |
|---|---|---|
| player_id | INTEGER | Primary key |
| team_id | INTEGER | FK → teams.team_id |
| name | TEXT | Nama pemain |
| position | TEXT | Posisi |
| date_of_birth | DATE | Tanggal lahir |
| nationality | TEXT | Kebangsaan |

### `coaches`
| Kolom | Tipe | Keterangan |
|---|---|---|
| coach_id | INTEGER | Primary key |
| name | TEXT | Nama pelatih |
| team_id | INTEGER | FK → teams.team_id |
| nationality | TEXT | Kebangsaan |

### `referees`
| Kolom | Tipe | Keterangan |
|---|---|---|
| referee_id | INTEGER | Primary key |
| name | TEXT | Nama wasit |
| nationality | TEXT | Kebangsaan |

### `stadiums`
| Kolom | Tipe | Keterangan |
|---|---|---|
| stadium_id | INTEGER | Primary key |
| name | TEXT | Nama stadion |
| location | TEXT | Lokasi |
| capacity | REAL | Kapasitas penonton |

### `matches`
| Kolom | Tipe | Keterangan |
|---|---|---|
| match_id | INTEGER | Primary key |
| season_id | INTEGER | FK → seasons.season_id |
| league_id | INTEGER | FK → leagues.league_id |
| matchday | INTEGER | Pekan pertandingan |
| home_team_id | INTEGER | FK → teams.team_id (tim kandang) |
| away_team_id | INTEGER | FK → teams.team_id (tim tandang) |
| winner | TEXT | HOME_TEAM / AWAY_TEAM / DRAW |
| utc_date | DATE | Tanggal pertandingan |

### `scores`
| Kolom | Tipe | Keterangan |
|---|---|---|
| score_id | INTEGER | Primary key |
| match_id | INTEGER | FK → matches.match_id |
| full_time_home | INTEGER | Skor akhir tim kandang |
| full_time_away | INTEGER | Skor akhir tim tandang |
| half_time_home | INTEGER | Skor babak pertama tim kandang |
| half_time_away | INTEGER | Skor babak pertama tim tandang |

### `standings`
| Kolom | Tipe | Keterangan |
|---|---|---|
| standing_id | INTEGER | Primary key |
| season_id | INTEGER | FK → seasons.season_id |
| league_id | INTEGER | FK → leagues.league_id |
| position | INTEGER | Posisi klasemen |
| team_id | INTEGER | FK → teams.team_id |
| played_games | INTEGER | Jumlah main |
| won | INTEGER | Jumlah menang |
| draw | INTEGER | Jumlah seri |
| lost | INTEGER | Jumlah kalah |
| points | INTEGER | Poin |
| goals_for | INTEGER | Gol dicetak |
| goals_against | INTEGER | Gol kebobolan |
| goal_difference | INTEGER | Selisih gol |
| form | TEXT | Form 5 pertandingan terakhir |

## 🔗 Diagram Relasi (Ringkas)

```
leagues ─┬─< seasons ─┬─< matches >─┬─ scores
         │            │             ├─ teams (home)
         ├─< teams ───┤             └─ teams (away)
         │      │     └─< standings ─ teams
         │      ├─< players
         │      └─ coaches
         │
         └─< stadiums (via teams.stadium_id)

referees → tidak terhubung langsung ke matches pada skema ini
```

## 🛠️ Cara Membuka

```bash
sqlite3 sports_league.sqlite
.tables
.schema teams
```

Atau buka dengan **DB Browser for SQLite** (GUI, gratis) di [sqlitebrowser.org](https://sqlitebrowser.org).
