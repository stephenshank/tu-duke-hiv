rule hivtrace:
  input:
    reference='data/input/hxb2_1497.fasta',
    genomes='data/input/san.fasta'
  output:
    'data/output/results.json'
  shell:
    'hivtrace -i {input.genomes} -a resolve -r {input.reference} -t .015 -m 500 -g .05 -u separately'
