# !/bin/csh -f

set x=0
while ($x <= num)
   mv $x.fid $x.fid.temp
    mkdir $x.fid
    cd $x.fid
    mv ../$x.fid.temp ./fid
    cp ../fid.com
    ./fid.com
    cd ..
    @x=$x+1
end
