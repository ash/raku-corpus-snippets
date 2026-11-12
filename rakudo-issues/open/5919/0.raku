{ 
    CATCH { default {  }}; 
    say await [Promise.broken(0), Promise.in(1)]
};
say now - BEGIN now # 0.042674309
