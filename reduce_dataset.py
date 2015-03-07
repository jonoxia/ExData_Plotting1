# Filter household_power_consumption.txt down to just 2 days
# (01/02/2007 and 02/02/2007) so it can be more easily handled
# by R. Outputs a file named "just_two_days.txt".

infile = open("household_power_consumption.txt", "r")
outfile = open("just_two_days.txt", "w")

header = infile.readline()
outfile.write(header)

for line in infile.readlines():
    if line.startswith("1/2/2007") or line.startswith("2/2/2007"):
        outfile.write(line)

infile.close()
outfile.close()
