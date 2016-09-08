# jbrowse-hg38
Script to build hg38 dataset for jbrowse.

Current state: work in progress..it's just pulling the refseqs.

It pulls hg38 refseqs from UCSC, unpacks them, and creates a jbrowse dataset.
It presumes to be in the jbrowse root directory when it's run, so you have to have installed jbrowse first.

'''
cd /var/www/jbrowse
sh get-hg38.sh
'''
