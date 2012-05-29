grid = 20
paths = []
for i in [0..grid]
	paths[i] = []
for i in [0..grid]
	paths[i][0] = 1
	paths[0][i] = 1

for i in [1..grid]
	for j in [1..grid]
		paths[i][j] = paths[i-1][j] + paths[i][j-1]

ans = paths[grid][grid]
console.log ans
