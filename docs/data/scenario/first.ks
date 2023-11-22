*start

    [title name="走るか寝るかするメロス2"]
    [hidemenubutton]
    [wait time=200]
    [freeimage layer="base"]

    [freeimage]
    [cm]
    「走るか寝るかするメロス」[l][r]

    メロスは出発した。[r]
    [eval exp="hp = 100"]
    [eval exp="jikan = 100"]
    [eval exp="kyori = 50"]

    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと[emb exp="kyori"]km[l][r]

    [link target=*tag_sleep_1] →寝る [endlink][r]
    [link target=*tag_run_1] →走る [endlink][r]
    [s]

*gameover_hitpoint
    
    [freeimage]
    [cm]

    体力切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]
*gameover_time

    [freeimage]
    [cm]

    時間切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]
*clear_meet
    
    [freeimage]
    [cm]

    セリヌンティウスに会ってクリア[r]
    [link target=*start] やり直す[endlink][r]
    [s]

*tag_sleep_1

    [freeimage]
    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [eval exp="kyori = kyori"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [elsif exp="kyori < 1"]
        [jump target=*clear_meet]
    [else]
        [bg storage=img0.jpg time=500]

        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと[emb exp="kyori"]km[r]

        [link target=*tag_sleep_1] →寝る [endlink][r]
        [link target=*tag_run_1] →走る [endlink][r]
        [s]

    [endif]

*tag_run_1
    
    [freeimage]
    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]
    [eval exp="kyori = kyori-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [elsif exp="kyori < 1"]
        [jump target=*clear_meet]
    [else]
        [bg storage=run.jpg time=500]

        [cm]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと[emb exp="kyori"]km[r]

        [link target=*tag_sleep_1] →寝る [endlink][r]
        [link target=*tag_run_1] →走る [endlink][r]
        [s]

    [endif]

    

