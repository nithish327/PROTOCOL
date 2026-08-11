TOOL:	xrun	25.03-s001: Started on Aug 11, 2026 at 09:04:13 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
t=0 | M.state=x SDA_r=x SCL_r=x count=x | S.state=x S.SDA_r=x | SDA=x SCL=x
t=5 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=1

======================================
          WRITE TEST
======================================
t=505 | M.state=1 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=5495 | M.state=1 SDA_r=1 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=0
t=10495 | M.state=1 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=10505 | M.state=1 SDA_r=0 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=1
t=10515 | M.state=1 SDA_r=0 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=15495 | M.state=1 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=15505 | M.state=2 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=20495 | M.state=2 SDA_r=0 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=25495 | M.state=2 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=25505 | M.state=2 SDA_r=0 SCL_r=0 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=30495 | M.state=2 SDA_r=0 SCL_r=1 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=35495 | M.state=2 SDA_r=0 SCL_r=0 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=35505 | M.state=2 SDA_r=0 SCL_r=0 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=40495 | M.state=2 SDA_r=0 SCL_r=1 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=45495 | M.state=2 SDA_r=0 SCL_r=0 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=45505 | M.state=2 SDA_r=0 SCL_r=0 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=50495 | M.state=2 SDA_r=0 SCL_r=1 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=55495 | M.state=2 SDA_r=0 SCL_r=0 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=55505 | M.state=2 SDA_r=0 SCL_r=0 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=60495 | M.state=2 SDA_r=0 SCL_r=1 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=65495 | M.state=2 SDA_r=0 SCL_r=0 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=65505 | M.state=2 SDA_r=0 SCL_r=0 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=70495 | M.state=2 SDA_r=0 SCL_r=1 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=75495 | M.state=2 SDA_r=0 SCL_r=0 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=75505 | M.state=2 SDA_r=0 SCL_r=0 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=80495 | M.state=2 SDA_r=0 SCL_r=1 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=85495 | M.state=2 SDA_r=0 SCL_r=0 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=85505 | M.state=3 SDA_r=1 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=1 SCL=0
t=90495 | M.state=3 SDA_r=1 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=1 SCL=1
t=90505 | M.state=3 SDA_r=1 SCL_r=1 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=1
t=95495 | M.state=3 SDA_r=1 SCL_r=0 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=0
t=95505 | M.state=4 SDA_r=0 SCL_r=0 count=0 | S.state=3 S.SDA_r=0 | SDA=0 SCL=0
t=100495 | M.state=4 SDA_r=0 SCL_r=1 count=0 | S.state=3 S.SDA_r=0 | SDA=0 SCL=1
t=100505 | M.state=5 SDA_r=0 SCL_r=1 count=0 | S.state=4 S.SDA_r=0 | SDA=0 SCL=1
t=100515 | M.state=5 SDA_r=0 SCL_r=1 count=0 | S.state=4 S.SDA_r=1 | SDA=0 SCL=1
t=105495 | M.state=5 SDA_r=0 SCL_r=0 count=0 | S.state=4 S.SDA_r=1 | SDA=0 SCL=0
t=105505 | M.state=5 SDA_r=1 SCL_r=0 count=0 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
t=105515 | M.state=5 SDA_r=1 SCL_r=0 count=0 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=110495 | M.state=5 SDA_r=1 SCL_r=1 count=0 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=110505 | M.state=5 SDA_r=1 SCL_r=1 count=1 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=115495 | M.state=5 SDA_r=1 SCL_r=0 count=1 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=115505 | M.state=5 SDA_r=0 SCL_r=0 count=1 | S.state=5 S.SDA_r=0 | SDA=0 SCL=0
t=120495 | M.state=5 SDA_r=0 SCL_r=1 count=1 | S.state=5 S.SDA_r=0 | SDA=0 SCL=1
t=120505 | M.state=5 SDA_r=0 SCL_r=1 count=2 | S.state=5 S.SDA_r=0 | SDA=0 SCL=1
t=125495 | M.state=5 SDA_r=0 SCL_r=0 count=2 | S.state=5 S.SDA_r=0 | SDA=0 SCL=0
t=125505 | M.state=5 SDA_r=1 SCL_r=0 count=2 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=130495 | M.state=5 SDA_r=1 SCL_r=1 count=2 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=130505 | M.state=5 SDA_r=1 SCL_r=1 count=3 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=135495 | M.state=5 SDA_r=1 SCL_r=0 count=3 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=140495 | M.state=5 SDA_r=1 SCL_r=1 count=3 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=140505 | M.state=5 SDA_r=1 SCL_r=1 count=4 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=145495 | M.state=5 SDA_r=1 SCL_r=0 count=4 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=150495 | M.state=5 SDA_r=1 SCL_r=1 count=4 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=150505 | M.state=5 SDA_r=1 SCL_r=1 count=5 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=155495 | M.state=5 SDA_r=1 SCL_r=0 count=5 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=155505 | M.state=5 SDA_r=0 SCL_r=0 count=5 | S.state=5 S.SDA_r=0 | SDA=0 SCL=0
t=160495 | M.state=5 SDA_r=0 SCL_r=1 count=5 | S.state=5 S.SDA_r=0 | SDA=0 SCL=1
t=160505 | M.state=5 SDA_r=0 SCL_r=1 count=6 | S.state=5 S.SDA_r=0 | SDA=0 SCL=1
t=165495 | M.state=5 SDA_r=0 SCL_r=0 count=6 | S.state=5 S.SDA_r=0 | SDA=0 SCL=0
t=165505 | M.state=5 SDA_r=1 SCL_r=0 count=6 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=170495 | M.state=5 SDA_r=1 SCL_r=1 count=6 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=170505 | M.state=5 SDA_r=1 SCL_r=1 count=7 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=175495 | M.state=5 SDA_r=1 SCL_r=0 count=7 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=180495 | M.state=5 SDA_r=1 SCL_r=1 count=7 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=180505 | M.state=6 SDA_r=1 SCL_r=1 count=0 | S.state=6 S.SDA_r=0 | SDA=1 SCL=1
t=185495 | M.state=6 SDA_r=1 SCL_r=0 count=0 | S.state=6 S.SDA_r=0 | SDA=1 SCL=0
t=185505 | M.state=6 SDA_r=1 SCL_r=0 count=0 | S.state=6 S.SDA_r=1 | SDA=0 SCL=0
t=190495 | M.state=6 SDA_r=1 SCL_r=1 count=0 | S.state=6 S.SDA_r=1 | SDA=0 SCL=1
t=190505 | M.state=7 SDA_r=1 SCL_r=1 count=0 | S.state=7 S.SDA_r=1 | SDA=0 SCL=1
t=190515 | M.state=7 SDA_r=1 SCL_r=1 count=0 | S.state=7 S.SDA_r=0 | SDA=1 SCL=1
t=190525 | M.state=7 SDA_r=1 SCL_r=1 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=1
t=190535 | M.state=7 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=195495 | M.state=7 SDA_r=1 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=0
t=195505 | M.state=7 SDA_r=0 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=0
t=200495 | M.state=7 SDA_r=0 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=1
t=200505 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=200515 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=1
WRITE PASSED : Expected=bb  Received=bb
t=200525 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1

======================================
          READ TEST
======================================
t=200735 | M.state=1 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=205495 | M.state=1 SDA_r=1 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=0
t=210495 | M.state=1 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=210505 | M.state=1 SDA_r=0 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=1
t=210515 | M.state=1 SDA_r=0 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=215495 | M.state=1 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=215505 | M.state=2 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=220495 | M.state=2 SDA_r=0 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=225495 | M.state=2 SDA_r=0 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=225505 | M.state=2 SDA_r=0 SCL_r=0 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=230495 | M.state=2 SDA_r=0 SCL_r=1 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=235495 | M.state=2 SDA_r=0 SCL_r=0 count=1 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=235505 | M.state=2 SDA_r=0 SCL_r=0 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=240495 | M.state=2 SDA_r=0 SCL_r=1 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=245495 | M.state=2 SDA_r=0 SCL_r=0 count=2 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=245505 | M.state=2 SDA_r=0 SCL_r=0 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=250495 | M.state=2 SDA_r=0 SCL_r=1 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=255495 | M.state=2 SDA_r=0 SCL_r=0 count=3 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=255505 | M.state=2 SDA_r=0 SCL_r=0 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=260495 | M.state=2 SDA_r=0 SCL_r=1 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=265495 | M.state=2 SDA_r=0 SCL_r=0 count=4 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=265505 | M.state=2 SDA_r=0 SCL_r=0 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=270495 | M.state=2 SDA_r=0 SCL_r=1 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=275495 | M.state=2 SDA_r=0 SCL_r=0 count=5 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=275505 | M.state=2 SDA_r=0 SCL_r=0 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=280495 | M.state=2 SDA_r=0 SCL_r=1 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=1
t=285495 | M.state=2 SDA_r=0 SCL_r=0 count=6 | S.state=2 S.SDA_r=0 | SDA=0 SCL=0
t=285505 | M.state=3 SDA_r=1 SCL_r=0 count=0 | S.state=2 S.SDA_r=0 | SDA=1 SCL=0
t=290495 | M.state=3 SDA_r=1 SCL_r=1 count=0 | S.state=2 S.SDA_r=0 | SDA=1 SCL=1
t=290505 | M.state=3 SDA_r=1 SCL_r=1 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=1
t=295495 | M.state=3 SDA_r=1 SCL_r=0 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=0
t=295505 | M.state=4 SDA_r=1 SCL_r=0 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=0
t=300495 | M.state=4 SDA_r=1 SCL_r=1 count=0 | S.state=3 S.SDA_r=0 | SDA=1 SCL=1
t=300505 | M.state=4 SDA_r=1 SCL_r=1 count=0 | S.state=4 S.SDA_r=0 | SDA=1 SCL=1
t=300515 | M.state=4 SDA_r=1 SCL_r=1 count=0 | S.state=4 S.SDA_r=1 | SDA=0 SCL=1
t=305495 | M.state=4 SDA_r=1 SCL_r=0 count=0 | S.state=4 S.SDA_r=1 | SDA=0 SCL=0
t=305505 | M.state=4 SDA_r=1 SCL_r=0 count=0 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
t=310495 | M.state=4 SDA_r=1 SCL_r=1 count=0 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=310505 | M.state=5 SDA_r=1 SCL_r=1 count=0 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=315495 | M.state=5 SDA_r=1 SCL_r=0 count=0 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
DRIVE count=0 bit=1 S_DATA_reg=10101011
t=315505 | M.state=5 SDA_r=1 SCL_r=0 count=0 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=320495 | M.state=5 SDA_r=1 SCL_r=1 count=0 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=320505 | M.state=5 SDA_r=1 SCL_r=1 count=1 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=325495 | M.state=5 SDA_r=1 SCL_r=0 count=1 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
DRIVE count=1 bit=0 S_DATA_reg=01010110
t=325505 | M.state=5 SDA_r=1 SCL_r=0 count=1 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
t=330495 | M.state=5 SDA_r=1 SCL_r=1 count=1 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=330505 | M.state=5 SDA_r=1 SCL_r=1 count=2 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=335495 | M.state=5 SDA_r=1 SCL_r=0 count=2 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
DRIVE count=2 bit=1 S_DATA_reg=10101100
t=335505 | M.state=5 SDA_r=1 SCL_r=0 count=2 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=340495 | M.state=5 SDA_r=1 SCL_r=1 count=2 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=340505 | M.state=5 SDA_r=1 SCL_r=1 count=3 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=345495 | M.state=5 SDA_r=1 SCL_r=0 count=3 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
DRIVE count=3 bit=0 S_DATA_reg=01011000
t=345505 | M.state=5 SDA_r=1 SCL_r=0 count=3 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
t=350495 | M.state=5 SDA_r=1 SCL_r=1 count=3 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=350505 | M.state=5 SDA_r=1 SCL_r=1 count=4 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=355495 | M.state=5 SDA_r=1 SCL_r=0 count=4 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
DRIVE count=4 bit=1 S_DATA_reg=10110000
t=355505 | M.state=5 SDA_r=1 SCL_r=0 count=4 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=360495 | M.state=5 SDA_r=1 SCL_r=1 count=4 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=360505 | M.state=5 SDA_r=1 SCL_r=1 count=5 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=365495 | M.state=5 SDA_r=1 SCL_r=0 count=5 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
DRIVE count=5 bit=0 S_DATA_reg=01100000
t=365505 | M.state=5 SDA_r=1 SCL_r=0 count=5 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
t=370495 | M.state=5 SDA_r=1 SCL_r=1 count=5 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=370505 | M.state=5 SDA_r=1 SCL_r=1 count=6 | S.state=5 S.SDA_r=1 | SDA=0 SCL=1
t=375495 | M.state=5 SDA_r=1 SCL_r=0 count=6 | S.state=5 S.SDA_r=1 | SDA=0 SCL=0
DRIVE count=6 bit=1 S_DATA_reg=11000000
t=375505 | M.state=5 SDA_r=1 SCL_r=0 count=6 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
t=380495 | M.state=5 SDA_r=1 SCL_r=1 count=6 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=380505 | M.state=5 SDA_r=1 SCL_r=1 count=7 | S.state=5 S.SDA_r=0 | SDA=1 SCL=1
t=385495 | M.state=5 SDA_r=1 SCL_r=0 count=7 | S.state=5 S.SDA_r=0 | SDA=1 SCL=0
DRIVE count=7 bit=1 S_DATA_reg=10000000
t=385505 | M.state=5 SDA_r=1 SCL_r=0 count=7 | S.state=6 S.SDA_r=0 | SDA=1 SCL=0
t=390495 | M.state=5 SDA_r=1 SCL_r=1 count=7 | S.state=6 S.SDA_r=0 | SDA=1 SCL=1
t=390505 | M.state=6 SDA_r=1 SCL_r=1 count=0 | S.state=7 S.SDA_r=0 | SDA=1 SCL=1
t=395495 | M.state=6 SDA_r=1 SCL_r=0 count=0 | S.state=7 S.SDA_r=0 | SDA=1 SCL=0
t=395505 | M.state=6 SDA_r=1 SCL_r=0 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=0
t=400495 | M.state=6 SDA_r=1 SCL_r=1 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=1
t=400505 | M.state=7 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=405495 | M.state=7 SDA_r=1 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=0
t=405505 | M.state=7 SDA_r=0 SCL_r=0 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=0
t=410495 | M.state=7 SDA_r=0 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=0 SCL=1
t=410505 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1
t=410515 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=0 S.SDA_r=0 | SDA=1 SCL=1
READ PASSED : Expected=ab  Received=ab
t=410525 | M.state=0 SDA_r=1 SCL_r=1 count=0 | S.state=1 S.SDA_r=0 | SDA=1 SCL=1

======================================
     ALL TESTS COMPLETED
======================================
Simulation complete via $finish(1) at time 410725 NS + 0
./testbench.sv:135     $finish;
xcelium> exit
