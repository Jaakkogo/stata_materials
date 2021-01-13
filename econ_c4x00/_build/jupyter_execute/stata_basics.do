di "Hello World!"

%help help

local userPath "Z:/ECON-C4100"
global userPath "C:/ECON-C4100"

di "`userPath'"
di "$userPath"

cd $userPath

pwd
cd

sysdir

local userPathTwice `userPath' $userPath $userPath
di "`userPathTwice'"

local userPathTwice

local one_ 1
local two_ 2
local three_ `one_' + `two_'

di `three_'

di "`three_'"

scalar one_ = 1
scalar two_ = 2
scalar three_ = one_ + two_
di three_
scalar drop three_

// Comment, one line
* Comment, one line

/* Comment, 
multiple 
lines */

#delimit ;
#delimit cr

local delimiter "tab" // our data has 'tabulate' key as the delimiter.
import delimited using ///
https://pxnet2.stat.fi:443/PXWeb/sq/2c23b351-c9a5-4946-b9c1-06c8146e7119 , ///
delimiter(`delimiter') clear

describe _all

generate temp = monthly(month, "YM")
drop month
rename temp month
label variable month "Month"

describe _all

import excel using ///
https://pxnet2.stat.fi/PXWeb/sq/feec4f38-7ddb-4c9f-b091-a0688c3f7b89 , ///
cellrange(A3:F194) firstrow clear

keep A B Pointfigure
rename A month
rename B commodity
generate temp = monthly(month, "YM")
drop month
rename temp month
label variable month "Month"

set scheme s1mono // just a style for our graph
line Pointfigure month
