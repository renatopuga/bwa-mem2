# bwa-mem2
Bwa-mem2 is the next version of the bwa-mem algorithm in bwa.

# How to run
```bash
# run 
docker run renatopuga/bwa-mem2:latest bwa-mem2 

Usage: bwa-mem2 <command> <arguments>
Commands:
  index         create index
  mem           alignment
  version       print version number
```

# How to index reference fasta file
```bash
# dir fasta file
cd /reference
ls
Homo_sapiens_assembly19.fasta 

# build index
# volume: -v $(pwd):/ref
docker run -v $(pwd):/ref renatopuga/bwa-mem2:latest bwa-mem2 index /ref/Homo_sapiens_assembly19.fasta 
...

# output
Homo_sapiens_assembly19.fasta 
Homo_sapiens_assembly19.fasta.pac
Homo_sapiens_assembly19.fasta.ann
Homo_sapiens_assembly19.fasta.amb
Homo_sapiens_assembly19.fasta.0123
Homo_sapiens_assembly19.fasta.bwt.8bit.32
Homo_sapiens_assembly19.fasta.bwt.2bit.64
```
