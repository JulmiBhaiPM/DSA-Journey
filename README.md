# DSA Journey — Aman | DTU ECE

Documenting my complete DSA preparation from scratch.
**Started:** [your start date]
**Target:** NeetCode 150 (Python) + Codeforces 1200+ rating (C++)

---

## Progress

| Platform | Problems Solved | Current Streak |
|---|---|---|
| LeetCode (NeetCode 150) | 0 / 150 | 0 days |
| Codeforces | 0 | 0 days |

> Update this table weekly.

---

## Repository Structure

```
DSA-Journey/
│
├── leetcode/                  ← NeetCode 150 problems in Python (auto-synced)
│   ├── arrays/
│   ├── strings/
│   ├── linked-lists/
│   ├── recursion/
│   ├── binary-search/
│   ├── stacks-queues/
│   ├── trees/
│   ├── graphs/
│   ├── dp/
│   ├── two-pointers/
│   └── sliding-window/
│
├── competitive-programming/   ← Codeforces problems in C++
│   ├── 800/
│   ├── 900/
│   ├── 1000/
│   ├── 1100/
│   ├── 1200/
│   └── 1300/
│
├── notes/                     ← Concepts, patterns, revision notes
│
└── scripts/
    ├── cf_commit.sh           ← Quick commit for Codeforces solutions
    └── push.sh                ← Universal push script
```

---

## File Naming Convention

**LeetCode (Python):**
```
0001_two_sum.py
0020_valid_parentheses.py
0121_best_time_to_buy_stock.py
```

**Codeforces (C++):**
```
1A_theatre_square.cpp
4A_watermelon.cpp
71A_way_too_long_words.cpp
```

---

## How LeetCode Auto-Sync Works

This repo uses a GitHub Action that runs every night at 11:30 PM IST.
It automatically pulls all accepted LeetCode submissions and commits them
to the `leetcode/` folder. Zero manual effort needed after setup.

---

## How to Commit a Codeforces Solution

1. Write your solution in the right folder, e.g.:
   `competitive-programming/800/1A_theatre_square.cpp`

2. Run:
   ```bash
   ./scripts/cf_commit.sh 800 1A "theatre square"
   ```

3. Done. Committed and pushed automatically.

---

## Resources

- [NeetCode 150](https://neetcode.io/practice) — interview problems
- [Striver's A2Z Sheet](https://takeuforward.org/strivers-a2z-dsa-course) — deep DSA
- [Codeforces](https://codeforces.com) — competitive programming
- [CP-Algorithms](https://cp-algorithms.com) — algorithm reference

---

*"1221 days. That's Edward Nathan Varghese's Codeforces streak. Day 1 starts today."*
