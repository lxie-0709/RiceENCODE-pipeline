import sys
sam=open(sys.argv[1],"r")
out=open(sys.argv[2],"w")
out1=open(sys.argv[3],"w")
for i in sam:
	a=i.strip().split("\t")
	if len(a)>6:
		ll="\t".join(a)
		if a[5].split("M")[0]=="24":
			out.write(ll+"\n")
		if a[5].split("M")[0]=="21":
			out1.write(ll+"\n")
	else:
		ll="\t".join(a)
		out1.write(ll+"\n")
		out.write(ll+"\n")
sam.close()
out.close()
out1.close()
