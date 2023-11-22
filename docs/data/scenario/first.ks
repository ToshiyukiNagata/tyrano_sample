*start

    [title name="走るか寝るかするメロス2"]
    [hidemenubutton]
    [wait time=200]
    [freeimage layer="base"]
    
    [cm]

    「走るか寝るかするメロス」[l][r]

    現在地：妹の家[r]
    NEXT：村の入り口[r]
    メロスはどうする？[r]
    [eval exp="hp = 100"]
    [eval exp="jikan = 100"]

    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと50km[l][r]

   [link target=*tag_sleep_ie] →寝る [endlink][r]
    [link target=*tag_run_gate] →走る [endlink][r]
    [s]

*gameover_hitpoint
    
    [cm]

    体力切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]

*gameover_time

    [cm]

    時間切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]

*clear_meet

    [cm]

    クリア。[r]
    [link target=*start] 初めからやり直す[endlink][r]
    [s]

*tag_sleep_ie

    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]
    現在地：妹の家[r]
    NEXT：村の入り口[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r]

        [link target=*tag_sleep_ie] →寝る [endlink][r]
        [link target=*tag_run_gate] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_gate

    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]
        現在地：村の入り口[r]
        NEXT：村はずれの川[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと40km[r]

        [link target=*tag_sleep_gate] →寝る [endlink][r]
        [link target=*tag_run_kawa] →走る [endlink][r]
        [s]

    [endif]

*tag_run_gate

    [cm]
            
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-10"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=run.jpg time=500]

        現在地：村の入り口[r]
        NEXT：村はずれの川[r]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと40km[r]

        [link target=*tag_sleep_gate] →寝る [endlink][r]
        [link target=*tag_run_kawa] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_kawa

    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]
        現在地：村はずれの川[r]
        NEXT：峠[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*tag_run_touge] →走る [endlink][r]
        [s]

    [endif]

*tag_run_kawa

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
        現在地：村はずれの川[r]
        NEXT：峠[r]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*tag_run_touge] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_touge

    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]
        現在地：峠[r]
        NEXT：野原[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*tag_run_nohara] →走る [endlink][r]
        [s]

    [endif]

*tag_run_touge

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
        現在地：峠[r]
        NEXT：野原[r]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*tag_run_nohara] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_nohara

    [cm]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=img0.jpg time=500]
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]

        [link target=*tag_sleep_nohara] →寝る [endlink][r]
        [link target=*clear_meet]→走る [endlink][r]
        [s]
    [endif]

*tag_run_nohara

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
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        メロスは走った。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]

        [link target=*tag_sleep_nohara] →寝る [endlink][r]
        [link target=*clear_meet] →走る [endlink][r]
        [s]

    [endif]
*event_kawa

*event_touge

*event_nohara


