rm -rf human38
mkdir human38
#wget http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.chromFa.tar.gz
rsync -a -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.chromFa.tar.gz ./human38
tar -zxvf ./human38/hg38.chromFa.tar.gz -C ./human38 --exclude="*_*"
for i in ./human38/chroms/*.fa ; do 
  [[ -f "$i" ]] || continue
  echo "prepare-refseq - $i"
  ./bin/prepare-refseqs.pl --fasta "$i" --out ./human38
done