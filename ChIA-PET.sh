#############################################
#ChIA-PET data were processed with updated ChIA-PET Tool(V3)software, a JAVA-based package for automatic processing of ChIA-PET sequence data, including linker filtering, read mapping, redundancy removal, protein-binding sites, and chromatin interaction identification.
#############################################
for sample in *_1.fastq;do
index="BWA_IDX_PATH"
genomesize="GENOME_SIZE"
ChIA-PET2 -g $index -b $genomesize -f $sample -r ${sample%%_*}_2.fastq  -A linkerA -B linkerB -o OUTdir -n name
done
