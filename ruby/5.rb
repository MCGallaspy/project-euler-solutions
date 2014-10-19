$LOAD_PATH << "."
require 'euler_help'

N=20

pfs_with_m = (2..N).map {|x| Euler.pfs_with_multiplicity(x)}.flatten(1)
pfs_max_ms = pfs_with_m.map do |p, m|
    max_m = pfs_with_m.select {|p1, m1| p1 == p}.max_by {|p1, m1| m1}
end.uniq

ans = pfs_max_ms.inject(1) {|prod, x| prod *= x[0]**x[1]}

print ans, "\n"
