1)Κοιτάζοντας το αρχείο config.json για το specbzip καταγράφουμε:

### Μεγέθη των caches

- l1

-- dcache

`"size": 65536,`
`"assoc": 2,`

-- icache

`"size": 32768,`
`"assoc": 2,`

- l2

`"assoc": 8,`
`"size": 2097152,`

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

``

-- CPI

``

-- Overall Miss Rates

--- dcache

```

```

--- icache

```

```

--- l2

```

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

1) ``

2) ``

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





