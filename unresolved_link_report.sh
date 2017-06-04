# 2016-03-23 Brahm Neufeld
# To run:
# Shift-right-click in /opt/customer folder
# - Open command prompt
# - start Kornshell with "ncenv" command (no output) 
# - Enter shell with "sh" command
# - type "unresolved_link_report.sh"

# make MAPOFFSETS.txt file. 
/opt/fox/bin/tools/mkblkma.sh /usr/fox/sp/files/FCP270.MAP 

# copy BlockTypeMap.txt from its home directory to the current working directory
cp /opt/fox/bin/tools/BlockTypeMap.txt .

# Run /opt/fox/bin/tools/dbvu270 for all CPs
# Replace LTRBG1/2/3 with your FCP270 letterbugs. Add as many lines as you need!

/opt/fox/bin/tools/dbvu270 -uredlb -I /usr/fox/sp/files/OS1C70 -O MapOffsets.txt -D /usr/fox/sp/files/DBLTRBG1.UC -f > /opt/customer/unresolved_link_reports/LTRBG1_unresolved_link_report.txt
/opt/fox/bin/tools/dbvu270 -uredlb -I /usr/fox/sp/files/OS1C70 -O MapOffsets.txt -D /usr/fox/sp/files/DBLTRBG2.UC -f > /opt/customer/unresolved_link_reports/LTRBG2_unresolved_link_report.txt
/opt/fox/bin/tools/dbvu270 -uredlb -I /usr/fox/sp/files/OS1C70 -O MapOffsets.txt -D /usr/fox/sp/files/DBLTRBG3.UC -f > /opt/customer/unresolved_link_reports/LTRBG3_unresolved_link_report.txt

