[1]
[2] 
[3] 
[4] 
[5] 
[6] 
[7] class Check {
[8]   has $.tr;
[9]   
[10]   method validate($i) {
[11]      if $i > 0 {
[12]        say "reach the limit, i=$i"
[13]      } else {
[14]       say "hello from validate i=$i";
[15]       self.tr.task-run($i+1);
[16]      }
[17]   }
[18] }
[19] 
[20] class Foo {
[21]   has Str @.data is rw;
[22]   
[23]   
[24]   
[25] method task-run($i) {
[26] 
[27]    say "hello from task run i=$i";
[28]    self.run-task($i);
[29]    say "task-run i=$i data: ", self.data;
[30]    self.check($i);
[31]    say "task-run i=$i data after calling method check: ", self.data();
[32] }
[33] 
[34] method run-task($i) {
[35]    say "hello from run-task i=$i, set data to [$i]";
[36]    self.data = ["$i"];
[37]    
[38] }
[39] 
[40] method check($i) {
[41] 
[42]    say "hello from check i=$i";
[43]    my $tc = Check.new(
[44]      tr => self.clone,
[45]    );
[46]    
[47]    $tc.validate($i);
[48]    
[49]    
[50] }
[51] 
[52] 
[53] }
[54] 
[55] my $i = Foo.new;
[56] 
[57] $i.task-run(0);
[58] 
