1)Κοιτάζοντας το αρχείο config.json για το specbzip καταγράφουμε:

### Μεγέθη των caches

- l1

-- dcache

`"size": 65536,` # 64KB
`"assoc": 2,`

-- icache

`"size": 32768,` # 32kB
`"assoc": 2,`

- l2

`"assoc": 8,`
`"size": 2097152,` # 2048 kB

- Μεγεθος cache line

`"cache_line_size": 64,`

2) Αποτελέσματα για κάθε simulation

- specbzip

-- Χρόνος εκτέλεσης

`sim_seconds                                  0.083654                       # Number of seconds simulated`

-- CPI

`system.cpu.cpi                               1.673085                       # CPI: cycles per instruction`

-- Overall Miss Rates

--- dcache

```
system.cpu.dcache.overall_miss_rate::.cpu.data     0.014312                       # miss rate for overall accesses
system.cpu.dcache.overall_miss_rate::total     0.014312                       # miss rate for overall accesses
```

--- icache

```
system.cpu.icache.overall_miss_rate::.cpu.inst     0.000075                       # miss rate for overall accesses
system.cpu.icache.overall_miss_rate::total     0.000075                       # miss rate for overall accesses
```

--- l2

```
system.l2.overall_miss_rate::.cpu.inst       0.868047                       # miss rate for overall accesses
system.l2.overall_miss_rate::.cpu.data       0.294599                       # miss rate for overall accesses
system.l2.overall_miss_rate::total           0.295247                       # miss rate for overall accesses
```

- specmcf

-- Χρόνος εκτέλεσης

`sim_seconds                                  0.062472                       # Number of seconds simulated`

-- CPI

`system.cpu.cpi                               1.249432                       # CPI: cycles per instruction`
-- Overall Miss Rates

--- dcache

```
system.cpu.dcache.overall_miss_rate::.cpu.data     0.002113                       # miss rate for overall accesses
system.cpu.dcache.overall_miss_rate::total     0.002113                       # miss rate for overall accesses
```

--- icache

```
system.cpu.icache.overall_miss_rate::.cpu.inst     0.019032                       # miss rate for overall accesses
system.cpu.icache.overall_miss_rate::total     0.019032                       # miss rate for overall accesses
```

--- l2

```
system.l2.overall_miss_rate::.cpu.inst       0.000974                       # miss rate for overall accesses
system.l2.overall_miss_rate::.cpu.data       0.728013                       # miss rate for overall accesses
system.l2.overall_miss_rate::total           0.067664                       # miss rate for overall accesses
```

- spechmmer

-- Χρόνος εκτέλεσης

`sim_seconds                                  0.118517                       # Number of seconds simulated`

-- CPI

`system.cpu.cpi                               1.185174                       # CPI: cycles per instruction`

-- Overall Miss Rates

--- dcache

```
system.cpu.dcache.overall_misses::.cpu.data        71108                       # number of overall misses
system.cpu.dcache.overall_misses::total         71108                       # number of overall misses
```

--- icache

```
system.cpu.icache.overall_misses::.cpu.inst         3662                       # number of overall misses
system.cpu.icache.overall_misses::total          3662                       # number of overall misses
```

--- l2

```
system.l2.overall_misses::.cpu.inst              1299                       # number of overall misses
system.l2.overall_misses::.cpu.data              4192                       # number of overall misses
system.l2.overall_misses::total                  5491                       # number of overall misses
```

- specsjeng

-- Χρόνος εκτέλεσης

`sim_seconds                                  0.513823                       # Number of seconds simulated`

-- CPI

`system.cpu.cpi                              10.276466                       # CPI: cycles per instruction`

-- Overall Miss Rates

--- dcache

```
system.cpu.dcache.overall_miss_rate::.cpu.data     0.121831                       # miss rate for overall accesses
system.cpu.dcache.overall_miss_rate::total     0.121831                       # miss rate for overall accesses
```

--- icache

```
system.cpu.icache.overall_miss_rate::.cpu.inst     0.000020                       # miss rate for overall accesses
system.cpu.icache.overall_miss_rate::total     0.000020                       # miss rate for overall accesses
```

--- l2

```
system.l2.overall_miss_rate::.cpu.inst       0.918877                       # miss rate for overall accesses
system.l2.overall_miss_rate::.cpu.data       0.999988                       # miss rate for overall accesses
system.l2.overall_miss_rate::total           0.999978                       # miss rate for overall accesses
```

- speclibm

-- Χρόνος εκτέλεσης

`sim_seconds                                  0.174763                       # Number of seconds simulated`

-- CPI

`system.cpu.cpi                               3.495270                       # CPI: cycles per instruction`

-- Overall Miss Rates

--- dcache

```
system.cpu.dcache.overall_miss_rate::.cpu.data     0.060972                       # miss rate for overall accesses
system.cpu.dcache.overall_miss_rate::total     0.060972                       # miss rate for overall accesses
```

--- icache

```
system.cpu.icache.overall_miss_rate::.cpu.inst     0.000095                       # miss rate for overall accesses
system.cpu.icache.overall_miss_rate::total     0.000095                       # miss rate for overall accesses
```

--- l2

```
system.l2.overall_miss_rate::.cpu.inst       0.867826                       # miss rate for overall accesses
system.l2.overall_miss_rate::.cpu.data       0.999991                       # miss rate for overall accesses
system.l2.overall_miss_rate::total           0.999940                       # miss rate for overall accesses
```

3) Έχοντας πλέον τρέξει την προσομοίωση και για --cpu-clock=2GHz συγκρίνουμε τις πληροφορίες για το ρολόι στο stats.txt

- specbzip
- speclibm2
- specmcf
- specsjeng

1) 

```
system.cpu_clk_domain.clock                      1000                       # Clock period in ticks
system.cpu_clk_domain.clock                      1000                       # Clock period in ticks
```

Από το config.json

```
"clk_domain": {
            "clock": [
                1000
            ],

"cpu_clk_domain": {
            "clock": [
                1000
            ],
```

2)

```
system.clk_domain.clock                          1000                       # Clock period in ticks
system.cpu_clk_domain.clock                       500                       # Clock period in ticks
```

Από το config.json

```
"clk_domain": {
            "clock": [
                1000
            ],

"cpu_clk_domain": {
            "clock": [
                500
            ],
```

Με τον αριθμό 1 είναι τα δεδομένα που παίρνουμε για το ρολόι με την εντολή
`--cpu-clock=1GHz`
Με τον αριθμό 2 είναι τα δεδομένα που παίρνουμε για το ρολόι με την εντολή
`--cpu-clock=2GHz`

Για τους χρόνους εκτέλεσης:

- specbzip

1) `sim_seconds                                  0.160359                       # Number of seconds simulated`

2) `sim_seconds                                  0.083654                       # Number of seconds simulated`

`0.160359 ÷ 0.083654 = 1,9169`

Το οποίο ενώ είναι αρκετά κοντά στον λόγο των δύο χρονισμών, δεν είναι ακριβώς 2.
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνο απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.

- spechmmer

1) `sim_seconds                                  0.118517                       # Number of seconds simulated`

2) `sim_seconds                                  0.059390                       # Number of seconds simulated`

`0.118517 ÷ 0.059390  = 1,995571645`
Το οποίο, ενώ είναι απίστευτα κοντά,  δεν είναι ακριβώς 2.
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνο απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.

- speclibm

1) `sim_seconds                                  0.262262                       # Number of seconds simulated`

2) `sim_seconds                                  0.174763                       # Number of seconds simulated`

`0.262262 ÷ 0.174763 = 1,500672339`

Το οποίο απέχει αρκετά από τον λόγο των δύο χρονισμών.
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνο απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.

- specmcf

1) `sim_seconds                                  0.123107                       # Number of seconds simulated`

2) `sim_seconds                                  0.062553                       # Number of seconds simulated`

`0.123107 ÷ 0.062553 = 1,968043099`

Το οποίο ενώ είναι αρκετά κοντά στον λόγο των δύο χρονισμών, δεν είναι ακριβώς 2.
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνο απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.

- specjeng

1) `sim_seconds                                  0.705640                       # Number of seconds simulated`

2) `sim_seconds                                  0.513823                       # Number of seconds simulated`

`0.705640 ÷ 0.513823 = 1,373313378`

Το οποίο απέχει αρκετά από τον λόγο των δύο χρονισμών.
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνος απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.


Βήμα 2

| Benchmark Number | l1_dsize (kB) | l1_icache (kB) | l2_size () | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specbzip |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| ```1``` |``` 64```| ```32```| ```2048```| ```2``` | ```2``` | ```8``` | ```64```    | ```1.673085``` |
| 2 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.647733 |
| 3 | 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.606936 |
| 4 | 64	| 64	| 512	| 2	| 2	| 8	| 64	|1.647888 |
| 5 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.603474 |
| 6 | 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.622091 |
| 7 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.620090 |
| 8 | 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.602931 |
| **9** | **128**	| **32**	| **2048**	| **2**	| **2**	| **8**	| **64**	|**1.576282** |
| 10 | 64	| 32	| 2048	| 4	| 4	| 8	| 64	|1.595124 |
| 11 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.620090 |
| 12 | 32	| 64	| 1024	| 2	| 2	| 8	| 64	|1.654279 |
| 13 | 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.596596 |
| 14 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.631299 |
| 15 | 32	| 32	| 512	| 2	| 2	| 8	| 64	|1.682318 |
| 16 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.647733 |
| 17 | 32	| 32	| 2048	| 2	| 2	| 8	| 64	|1.637899 |
| 18 | 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.707788 |
| 19 | 64	| 64	| 1024	| 2	| 2	| 8	| 64	|1.619925 |
| 20 | 32	| 32	| 1024	| 2	| 2	| 8	| 64	|1.654357 |
| 21 | 32	| 64	| 512	| 2	| 2	| 8	| 64	|1.682240 |

Παρατηρούμε ότι η καλύτερη επίδοση επιτυνχάνεται για την αύξηση του μεγέθους της l1d μνήμης από 64kB σε 32 kB.
Παρατηρούμε επίσης ότι η μείωση του μεγέθους της cachelize έχει ως αποτέλεσμα χειρότερη επίδοση.
Η μείωση του associativity τόσο στην l1 όσο και στην l2 (με μεγαλύτερη διαφορά στην l2) επιφέρει ελαφρώς καλύτερη επίδοση (για την default χωρητικότητα των μνημών)


| Benchmark Number | l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specmcf |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| ```1``` |``` 64```| ```32```| ```2048```| ```2``` | ```2``` | ```8``` | ```64```    | ```1.249432``` |
| 2 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.237981 |
| 3 | 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.232680 |
| 4 | 64	| 64	| 512	| 2	| 2	| 8	| 64	|1.123806 |
| 5 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.117925 |
| 6 | 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.327047 |
| 7 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.235381 |
| 8 | 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.232655 |
| 9 | 128	| 32	| 2048	| 2	| 2	| 8	| 64	|1.232073 |
| **10** | **64**	| **32**	| **2048**	| **4**	| **4**	| **8**	| **64**	|**1.117517** |
| 11 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.235381 |
| 12 | 32	| 64	| 1024	| 2	| 2	| 8	| 64	|1.122923 |
| 13 | 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.236049 |
| 14 | 32	| 32	| 512	| 2	| 2	| 8	| 64	|1.240050 |
| 15 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.237981 |
| 16 | 32	| 32	| 2048	| 2	| 2	| 8	| 64	|1.234393 |
| 17 | 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.214562 |
| 18 | 64	| 64	| 1024	| 2	| 2	| 8	| 64	|1.120746 |
| 19 | 32	| 32	| 1024	| 2	| 2	| 8	| 64	|1.237188 |
| 20 | 32	| 64	| 512	| 2	| 2	| 8	| 64	|1.125855 |

Μεγαλύτερη βελτίωση παρατηρείται κυρίως για την αύξηση των associativity της l1 μνήμης, καθώς επίσης και με τη μείωση του συνολικού μεγέθους της μνήμης l2, αλλά και l1i.
Κάθε αλλαγή προσέφερε ελαφρώς καλύτερη επίδοση από την ήδη ικανοποιητική επίδοση της αρχικής μας προσομοίωσης.


| Benchmark Number | l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | spechmmer |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| ```1``` |``` 64```| ```32```| ```2048```| ```2``` | ```2``` | ```8``` | ```64```    | ```1.185174``` |
| 2 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.185174 |
| 3 | 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.185174 |
| 4 | 64	| 64	| 512	| 2	| 2	| 8	| 64	|6.669604 |
| 5 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.184933 |
| 6 | 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.335018 |
| 7 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.185174 |
| 8 | 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.185174 |
| 9 | 64	| 32	| 2048	| 4	| 4	| 8	| 64	|1.184634 |
| 10 | 32	| 64	| 1024	| 2	| 2	| 8	| 64	|6.669604 |
| **11** | **64**	| **32**	| **2048**	| **2**	| **2**	| **8**	| **128**	|**1.180157** |
| 12 | 32	| 32	| 512	| 2	| 2	| 8	| 64	|6.718416 |
| 13 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|6.718416 |
| 14 | 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.191936 |
| 15 | 32	| 32	| 1024	| 2	| 2	| 8	| 64	|6.718416 |

Σε αυτό το benchmark με ήδη ιδιαίτερα χαμηλό cpi, πολλές αλλαγές μας είχαν καταστροφική επίπτωση στο cpi. Ελάχιστες είχαν (ελαφρώς) καλύτερη επίδοση, όπως για παράδειγμα η αύξηση του μεγέθους της cacheline.
Παρατηρήσαμε επίσης ότι το associativity της l2 είτε είναι ίσο με 8 είτε με 2, είτε με 4, δεν είχε ουσιαστικά καμία απολύτως διαφορά!

| Benchmark Number| l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specsjeng |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| ```1``` |``` 64```| ```32```| ```2048```| ```2``` | ```2``` | ```8``` | ```64```    | ```10.27646``` |
| 2 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|7.055191 |
| 3 | 64	| 32	| 2048	| 2	| 2	| 2	| 64	|7.054192 |
| 4 | 64	| 64	| 512	| 2	| 2	| 8	| 64	|7.055185 |
| 5 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|7.054466 |
| 6 | 64	| 32	| 2048	| 1	| 1	| 8	| 64	|7.054860 |
| 7 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055298 |
| 8 | 64	| 32	| 2048	| 2	| 2	| 4	| 64	|7.054262 |
| 9 | 128	| 32	| 2048	| 2	| 2	| 8	| 64	|7.054495 |
| 10 | 64	| 32	| 2048	| 4	| 4	| 8	| 64	|7.054527 |
| 11 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055298 |
| 12 | 32	| 64	| 1024	| 2	| 2	| 8	| 64	|7.055325 |
| 13 | 64	| 32	| 2048	| 2	| 2	| 8	| 128	|4.984822 |
| 14 | 32	| 32	| 512	| 2	| 2	| 8	| 64	|7.055237 |
| 15 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|7.055191 |
| 16 | 32	| 32	| 2048	| 2	| 2	| 8	| 64	|7.056395 |
| **17** | **64**	| **32**	| **2048**	| **2**	| **2**	| **8**	| **32**	|**1.665655** |
| 18 | 64	| 64	| 1024	| 2	| 2	| 8	| 64	|7.055234 |
| 19 | 32	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055325 |
| 20 | 32	| 64	| 512	| 2	| 2	| 8	| 64	|7.055188 |

Βρεθήκαμε προ εκπλήξεως μπροστά σε μια φανταστική βελτιστοποίηση του cpi, από 10.27 στο εντυπωσιακό 1.66! Αυτό προέκυψε με την αλλαγή του μεγέθους της cacheline, και συγκεκριμένα τη μείωση της σε 32kB! Ωστόσο ιδιαίτερα περίεργο θα χαρακτηρίζαμε και το γεγονός ότι το δεύτερο υψηλότερο cpi προέκυψε με αύξηση του μεγέθους της cacheline σε 128kB.
Γενικότερα κάθε άλλη αλλαγή μας οδήγησε σε μείωση του cpi σε 7, δίχως σημαντικές διαφορές.


| Benchmark Number | l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | speclibm |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| ```1``` |``` 64```| ```32```| ```2048```| ```2``` | ```2``` | ```8``` | ```64```    | ```3.495270``` |
| 2 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 3 | 64	| 32	| 2048	| 2	| 2	| 2	| 64	|2.622616 |
| 4 | 64	| 64	| 512	| 2	| 2	| 8	| 64	|2.624291 |
| 5 | 64	| 64	| 2048	| 2	| 2	| 8	| 64	|2.622504 |
| 6 | 64	| 32	| 2048	| 1	| 1	| 8	| 64	|2.638586 |
| 7 | 32	| 64	| 512	| 1	| 1	| 2	| 64	|2.831285 |
| 8 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 9 | 64	| 32	| 2048	| 2	| 2	| 4	| 64	|2.622616 |
| 10 | 128	| 32	| 2048	| 2	| 2	| 8	| 64	|2.622616 |
| 11 | 64	| 32	| 2048	| 4	| 4	| 8	| 64	|2.622578 |
| 12 | 64	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 13 | 32	| 32	| 512	| 1	| 1	| 2	| 64	|2.621863 |
| 14 | 32	| 64	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 15 | 32	| 32	| 1024	| 1 | 1	| 2	| 64	|2.604773 |
| **16** | **64**	| **32**	| **2048**	| **2**	| **2**	| **8**	| **128**	|**1.989979** |
| 17 | 32	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 18 | 64	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 19 | 32	| 32	| 2048	| 2	| 2	| 8	| 64	|2.622616 |
| 20 | 64	| 32	| 2048	| 2	| 2	| 8	| 32	|3.920660 |
| 21 | 64	| 64	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 22 | 32	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 23 | 32	| 64	| 512	| 2	| 2	| 8	| 64	|2.624291 |

Οι περισσότερες αλλαγές μας οδήγησαν σε μείωση (πλήν της μείωσης του μεγέθους της cacheline) με παρόμοιο αντίκτυπο στην καθεμία περίπτωση.


Από όλα τα παραπάνω καταλήγουμε στο συμπέρασμα ότι κάθε benchmark επωφελείται από διαφορετική αλλαγή στα χαρακτηριστικά, ανάλογα με τον διεργασία που κάνει. Για αυτό και δεν υπάρχει μια καθολική αλλαγή ή συνδυασμός τιμών που θα δίνει πάντα το βέλτιστο αποτέλεσμα σε όλα τα benchmarks. Ακόμη, μια αλλαγή που θα οδηγήσει σε τεράστια βελτίωση σε ένα benchmark συνήθως θα οδηγήσει σε μεγάλη απώλεια σε ένα άλλο (π.χ. στις παραπάνω προσομοιώσεις η αλλαγή του μεγέθους cachelinesize σε 32, είχε φοβερή βελτίωση στο specjeng, αλλά χειρότερη επίδοση σε κάθε άλλο benchmark). Για αυτό το λόγο κάθε αλλαγή θα πρέπει να παρατηρείται καθολικά ,και όχι μεμονωμένα,για κάθε benchmark.

