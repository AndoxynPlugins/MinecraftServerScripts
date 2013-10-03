rm -f failed
find src -type f -exec bash -c 'file={};echo "- $file"; bash -n $file; if [[ $? != 0 ]]; then echo -n "$file " >> failed; fi' /. \;
if [[ -a failed ]]; then echo "File(s) failed: `cat failed`"; rm -f failed; exit 1; else echo "All success!"; exit 0; fi
