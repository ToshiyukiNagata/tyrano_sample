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

    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと50km[l][r]

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

    クリア。[r]
    [link target=*start] 初めからやり直す[endlink][r]
    [s]

*tag_sleep_1

    [freeimage]
    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]

        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r]

        [link target=*tag_sleep_1] →寝る [endlink][r]
        [link target=*tag_run_1] →走る [endlink][r]
        [s]

    [endif]

*tag_run_1
    
    [freeimage]
    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=run.jpg time=500]

        [cm]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと40km[r]

        [link target=*tag_sleep_1] →寝る [endlink][r]
        [link target=*tag_run_2] →走る [endlink][r]
        [s]

    [endif]
*tag_sleep_2

    [freeimage]
    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]

        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r]

        [link target=*tag_sleep_2] →寝る [endlink][r]
        [link target=*tag_run_3] →走る [endlink][r]
        [s]

    [endif]

*tag_run_2
    
    [freeimage]
    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=run.jpg time=500]

        [cm]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r]

        [link target=*tag_sleep_2] →寝る [endlink][r]
        [link target=*tag_run_3] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_3

    [freeimage]
    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]

        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r]

        [link target=*tag_sleep_3] →寝る [endlink][r]
        [link target=*tag_run_4] →走る [endlink][r]
        [s]

    [endif]

*tag_run_3
    
    [freeimage]
    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=run.jpg time=500]

        [cm]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r]

        [link target=*tag_sleep_3] →寝る [endlink][r]
        [link target=*tag_run_4] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_4

    [freeimage]
    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]

        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r]

        [link target=*tag_sleep_4] →寝る [endlink][r]
        [link target=*clear_meet]

*tag_run_4
    
    [freeimage]
    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=run.jpg time=500]

        [cm]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r]

        [link target=*tag_sleep_3] →寝る [endlink][r]
        [link target=*clear_meet] →走る [endlink][r]
        [s]

    [endif]

    

