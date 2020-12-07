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
Αυτό συμβαίνει διότι στο χρόνο εκτέλεσης δεν παίζει ρόλο μόνο το ρολόι του επεξεργαστή, αλλά και ο χρόνο απόκρισης της μνήμης η οποία διατηρείται ίδια και στα δύο πειράματα.


Βήμα 2

| l1_dsize (kB) | l1_icache (kB) | l2_size () | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specbzip |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
| **64**| **32**| **2048**| **2** | **2** | **8** | **64**    | **1.673085** |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.647733 |
| 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.606936 |
| 64	| 64	| 512	| 2	| 2	| 8	| 64	|1.647888 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.603474 |
| 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.622091 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.620090 |
| 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.602931 |
| 128	| 32	| 2048	| 2	| 2	| 8	| 64	|1.576282 |
| 64	| 32	| 2048	| 4	| 4	| 8	| 64	|1.595124 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.620090 |
| 32	| 64	| 1024	| 2	| 2	| 8	| 64	|1.654279 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.596596 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.631299 |
| 32	| 32	| 512	| 2	| 2	| 8	| 64	|1.682318 |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.647733 |
| 32	| 32	| 2048	| 2	| 2	| 8	| 64	|1.637899 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.707788 |
| 64	| 64	| 1024	| 2	| 2	| 8	| 64	|1.619925 |
| 32	| 32	| 1024	| 2	| 2	| 8	| 64	|1.654357 |
| 32	| 64	| 512	| 2	| 2	| 8	| 64	|1.682240 |


| l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specmcf |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **64**| **32**| **2048**| **2** | **2** | **8** | **64**    | **1.249432** |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.237981 |
| 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.232680 |
| 64	| 64	| 512	| 2	| 2	| 8	| 64	|1.123806 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.117925 |
| 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.327047 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.235381 |
| 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.232655 |
| 128	| 32	| 2048	| 2	| 2	| 8	| 64	|1.232073 |
| 64	| 32	| 2048	| 4	| 4	| 8	| 64	|1.117517 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.235381 |
| 32	| 64	| 1024	| 2	| 2	| 8	| 64	|1.122923 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.236049 |
| 32	| 32	| 512	| 2	| 2	| 8	| 64	|1.240050 |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.237981 |
| 32	| 32	| 2048	| 2	| 2	| 8	| 64	|1.234393 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.214562 |
| 64	| 64	| 1024	| 2	| 2	| 8	| 64	|1.120746 |
| 32	| 32	| 1024	| 2	| 2	| 8	| 64	|1.237188 |
| 32	| 64	| 512	| 2	| 2	| 8	| 64	|1.125855 |


| l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | spechmmer |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **64**| **32**| **2048**| **2** | **2** | **8** | **64**    | **1.185174** |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|1.185174 |
| 64	| 32	| 2048	| 2	| 2	| 2	| 64	|1.185174 |
| 64	| 64	| 512	| 2	| 2	| 8	| 64	|6.669604 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|1.184933 |
| 64	| 32	| 2048	| 1	| 1	| 8	| 64	|1.335018 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|1.185174 |
| 64	| 32	| 2048	| 2	| 2	| 4	| 64	|1.185174 |
| 64	| 32	| 2048	| 4	| 4	| 8	| 64	|1.184634 |
| 32	| 64	| 1024	| 2	| 2	| 8	| 64	|6.669604 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.180157 |
| 32	| 32	| 512	| 2	| 2	| 8	| 64	|6.718416 |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|6.718416 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.191936 |
| 32	| 32	| 1024	| 2	| 2	| 8	| 64	|6.718416 |


| l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | specsjeng |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **64**| **32**| **2048**| **2** | **2** | **8** | **64**    | **10.27646** |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|7.055191 |
| 64	| 32	| 2048	| 2	| 2	| 2	| 64	|7.054192 |
| 64	| 64	| 512	| 2	| 2	| 8	| 64	|7.055185 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|7.054466 |
| 64	| 32	| 2048	| 1	| 1	| 8	| 64	|7.054860 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055298 |
| 64	| 32	| 2048	| 2	| 2	| 4	| 64	|7.054262 |
| 128	| 32	| 2048	| 2	| 2	| 8	| 64	|7.054495 |
| 64	| 32	| 2048	| 4	| 4	| 8	| 64	|7.054527 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055298 |
| 32	| 64	| 1024	| 2	| 2	| 8	| 64	|7.055325 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 128	|4.984822 |
| 32	| 32	| 512	| 2	| 2	| 8	| 64	|7.055237 |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|7.055191 |
| 32	| 32	| 2048	| 2	| 2	| 8	| 64	|7.056395 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 32	|1.665655 |
| 64	| 64	| 1024	| 2	| 2	| 8	| 64	|7.055234 |
| 32	| 32	| 1024	| 2	| 2	| 8	| 64	|7.055325 |
| 32	| 64	| 512	| 2	| 2	| 8	| 64	|7.055188 |


| l1_dsize (kB) | l1_icache (kB) | l2_size (kB) | l1d_assoc | l1i_assoc | l2_assoc | cacheline_size | speclibm |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **64**| **32**| **2048**| **2** | **2** | **8** | **64**    | **3.495270** |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 64	| 32	| 2048	| 2	| 2	| 2	| 64	|2.622616 |
| 64	| 64	| 512	| 2	| 2	| 8	| 64	|2.624291 |
| 64	| 64	| 2048	| 2	| 2	| 8	| 64	|2.622504 |
| 64	| 32	| 2048	| 1	| 1	| 8	| 64	|2.638586 |
| 32	| 64	| 512	| 1	| 1	| 2	| 64	|2.831285 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 64	| 32	| 2048	| 2	| 2	| 4	| 64	|2.622616 |
| 128	| 32	| 2048	| 2	| 2	| 8	| 64	|2.622616 |
| 64	| 32	| 2048	| 4	| 4	| 8	| 64	|2.622578 |
| 64	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 32	| 32	| 512	| 1	| 1	| 2	| 64	|2.621863 |
| 32	| 64	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 32	| 32	| 1024	| 1	| 1	| 2	| 64	|2.604773 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 128	|1.989979 |
| 32	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 64	| 32	| 512	| 2	| 2	| 8	| 64	|2.624329 |
| 32	| 32	| 2048	| 2	| 2	| 8	| 64	|2.622616 |
| 64	| 32	| 2048	| 2	| 2	| 8	| 32	|3.920660 |
| 64	| 64	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 32	| 32	| 1024	| 2	| 2	| 8	| 64	|2.623706 |
| 32	| 64	| 512	| 2	| 2	| 8	| 64	|2.624291 |

