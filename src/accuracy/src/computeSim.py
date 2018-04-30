from __future__ import division
def getsimj(term1,term2,ancestors):
	if len(set.union(ancestors[term1],ancestors[term2])) >0:
		simj=len(set.intersection(ancestors[term1],ancestors[term2]))/len(set.union(ancestors[term1],ancestors[term2]))
	else:
		simj=0
	return simj


def load_subsumers():
	infile=open(sys.argv[2])
	subsumers=dict()
	for line in infile:
		child,subsumer=line.strip().split("\t")
		if child not in subsumers:
			subsumers[child]=set()
			subsumers[child].add(child)
		if subsumer != "owl:Thing":
			subsumers[child].add(subsumer)
	return subsumers

def main():
	simscores=[]
	infile=open(sys.argv[1])
	infile.next()
	subsumers=load_subsumers()

	for line in infile:
		if "NA	NA" not in line:
			line=line.replace(":","_")
			term1=line.strip().split("\t")[1]
			term2=line.strip().split("\t")[2]
			if term1 =="NA" or term2=="NA":
				sim=0
			elif term1==term2:
				sim=1
			else:
				sim=getsimj(term1,term2,subsumers)
			simscores.append(sim)
	print "Mean semantic similarity: ",round(np.mean(simscores),3)
	
if __name__ == "__main__":
	import math
	import sys
	import numpy as np
	main()