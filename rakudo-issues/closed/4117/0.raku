my $zipd = run 'C:\Program Files\7-Zip\7z.exe',
    'a',
    '-t7z',
    'D:\b\t.7z',
    'C:\Users\quest\Desktop\t',
    '-mhe', '-mx7',
    '-ppassword';
