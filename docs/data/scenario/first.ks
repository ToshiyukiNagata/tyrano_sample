*start

    [title name="走るか寝るかするメロス2"]
    [hidemenubutton]
    [wait time=200]
    [freeimage layer="base"]
    
    [cm]
    [bg storage=ie.jpg time=500]
    [eval exp="hp = 100"]
    [eval exp="jikan = 100"]
    [eval exp="power = 100"]
    [eval exp="luck = 0"]
    [eval exp="countdown = 5"]
    

    「走るか寝るかするメロス」[l][r]
    [link target=*before_start] →スタート [endlink][r]
*before_start
    [if exp="countdown < 1"]
        [jump target=*after_start]
    [else]
        [cm]
        [bg storage=ie.jpg time=500]
        現在地：妹の家[r]
        残り体力：[emb exp="hp"][r]
        戦闘力：[emb exp="power"][r]
        残りターン：[emb exp="countdown"][r]
        今日は…[r]
        [link target=*train] →体を鍛える。 [endlink][r]
        [link target=*cure] →休む。 [endlink][r]
        [link target=*pray] →教会に行く。 [endlink][r]
        [s]
    [endif]
*train
    [cm]
    [eval exp="countdown = countdown - 1"]
    [eval exp="power = power + 10"]
    [eval exp="hp = hp - 10"]
    体を鍛えた。[l][r]
    [jump target=*before_start]
*cure
    [cm]
    [eval exp="countdown = countdown - 1"]
    [eval exp="hp = hp + 10"]
    体を休めた。[l]
    [jump target=*before_start]
*pray
    [cm]
    [eval exp="countdown = countdown - 1"]
    [eval exp="luck = luck + 1"]
    教会で祈りをささげた。[r]
    災難を回避できる気がする…[l][r]
    [jump target=*before_start]
    
*after_start
    [bg storage=ie.jpg time=500]
    現在地：妹の家[r]
    NEXT：村の入り口[r]
    ついに今日からスタートだ。[r]
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
    [bg storage=touzoku_lose.jpg time=500]
    体力切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]

*gameover_time

    [cm]
    [bg storage=time0.jpg time=500]
    時間切れでゲームオーバーです。[r]
    [link target=*start] やり直す[endlink][r]
    [s]

*gameover_touzoku
    [cm]
    [bg storage=touzoku_lose.jpg time=500]
    盗賊に負けてしまった…[r]
    [link target=*start] やり直す[endlink][r]
    [s]
*clear_meet

    [cm]
    [bg storage=clear_meet.jpg time=500]
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
        [bg storage=sleep.jpg time=500]
        現在地：妹の家[r]
        NEXT：村の入り口[r]
        メロスは休んだ。[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと50km[r][r]

        [link target=*tag_sleep_ie] →寝る [endlink][r]
        [link target=*tag_run_gate] →走る [endlink][r]
        [s]

    [endif]

*tag_sleep_gate

    [cm]
    [bg storage=kaihuku.jpg time=500]
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=kaihuku.jpg time=500]  
        メロスは休んだ。[r]
        現在地：村の入り口[r]
        NEXT：村はずれの川[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと40km[r][r]

        [link target=*tag_sleep_gate] →寝る [endlink][r]
        [link target=*event_kawa] →走る [endlink][r]
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
        

        [bg storage=gate.jpg time=500] 
        メロスは走った。[r]
        現在地：村の入り口[r]
        NEXT：村はずれの川[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと40km[r][r]

        [link target=*tag_sleep_gate] →寝る [endlink][r]
        [link target=*event_kawa] →走る [endlink][r]
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
        [bg storage=kaihuku.jpg time=500] 
        
        メロスは休んだ。[r]
        現在地：村はずれの川[r]
        NEXT：峠[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r][r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*event_touge] →走る [endlink][r]
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
        [bg storage=kawa.jpg time=500] 

        [cm]
        
        メロスは走った。[r]
        現在地：村はずれの川[r]
        NEXT：峠[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r][r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*event_touge] →走る [endlink][r]
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
        [bg storage=kaihuku.jpg time=500] 
        
        メロスは休んだ。[r]
        現在地：峠[r]
        NEXT：野原[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r][r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*event_nohara] →走る [endlink][r]
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
        [bg storage=touge.jpg time=500] 

        [cm]
        
        メロスは走った。[r]
        現在地：峠[r]
        NEXT：野原[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r]
        [r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*event_nohara] →走る [endlink][r]
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
        [bg storage=kaihuku.jpg time=500] 
        メロスは休んだ。[r]
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]
        [r]
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
        [bg storage=nohara.jpg time=500] 

        [cm]
        メロスは走った。[r]
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]
        [r]
        [link target=*tag_sleep_nohara] →寝る [endlink][r]
        [link target=*clear_meet] →走る [endlink][r]
        [s]

    [endif]
*event_kawa
    [cm]
    [bg storage=kawa.jpg time=500] 
    川が反乱を起こしている…[r]
    [link target=*tag_ukai_kawa] →迂回する [endlink][r]
    [link target=*tag_susumu_kawa] →川を突っ切る [endlink][r]
    [s]
*tag_ukai_kawa
    [cm]
    [eval exp="hp = hp-10"]
    [eval exp="jikan = jikan-20"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=ukaikawa.jpg time=500] 
        
        時間はかかったが何とか迂回できた。[r]
        現在地：村はずれの川[r]
        NEXT：峠[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r][r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*event_touge] →走る [endlink][r]
        [s]

    [endif]
*tag_susumu_kawa
    [cm]
    [eval exp="hp = hp-20"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=ukaikawa.jpg time=500] 
        
        なんとか泳ぎ切った…[r]
        現在地：村はずれの川[r]
        NEXT：峠[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと30km[r][r]

        [link target=*tag_sleep_kawa] →寝る [endlink][r]
        [link target=*event_touge] →走る [endlink][r]
        [s]

    [endif]

*event_touge
    [cm]
    [bg storage=touzoku.jpg time=500] 
    山賊が現れた！[r]
    [link target=*tag_tatakau_touge] →戦う [endlink][r]
    [link target=*tag_nigeru_touge] →逃げる [endlink][r]
    [s]

*tag_nigeru_touge
    [cm]
    [eval exp="hp = hp-20"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=touge.jpg time=500]
        
        なんとか逃げ切った…[r]
        現在地：峠[r]
        NEXT：野原[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r][r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*event_nohara] →走る [endlink][r]
        [s]

    [endif]

*tag_tatakau_touge
    [cm]
    [eval exp="hp = hp"]
    [eval exp="jikan = jikan-10"]
    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="hp < 50"]
        [jump target=*gameover_touzoku]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    
    [else]
        [bg storage=touzoku_win.jpg time=500]
        
        盗賊に勝利した！[r]
        現在地：峠[r]
        NEXT：野原[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと20km[r][r]

        [link target=*tag_sleep_touge] →寝る [endlink][r]
        [link target=*event_nohara] →走る [endlink][r]
        [s]

    [endif]

*event_nohara
    [cm]
    [bg storage=noharaeve.jpg time=500] 
    ???「ああ、メロス様。」[r]
    この声は…[r]
    [link target=*tag_seikai] →フィロストラトスか？ [endlink][r]
    [link target=*tag_huseikai] →アレキスか？ [endlink][r]
    [link target=*tag_huseikai] →ディオニスか？ [endlink][r]
    [link target=*tag_huseikai] →セリヌンティウスか？ [endlink][r]
    [s]

*tag_huseikai

    [cm] 
    [eval exp="hp = hp"]
    [eval exp="jikan = jikan"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=huseikai.jpg time=500]

        [cm]
        ???「あ、違います。」
        少年は寂しそうに去っていった。[r]
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]
        [r]
        [link target=*tag_sleep_nohara] →寝る [endlink][r]
        [link target=*clear_meet] →走る [endlink][r]
        [s]

    [endif]

*tag_seikai

    [cm]
            
    [eval exp="hp = hp+10"]
    [eval exp="jikan = jikan"]

    [if exp="hp < 1"]
        [jump target=*gameover_hitpoint]
    [elsif exp="jikan < 1"]
        [jump target=*gameover_time]
    [else]
        [bg storage=seikai.jpg time=500]

        [cm]
        フィロストラトス「もう、ダメでございます。走るのはやめてください。」[r]
        メロス「いや、まだ陽は沈まぬ。」[r]
        フィロストラトス「ああ、あなたは気が狂ったか。それでは、うんと走るがいい。」[r]
        力がみなぎって体力が回復した！[r]
        現在地：野原[r]
        NEXT：シラクス処刑場[r]
        残り体力：[emb exp="hp"][r]
        残り時間：[emb exp="jikan"]時間[r]
        セリヌンティウスまであと10km[r]
        [link target=*tag_sleep_nohara] →寝る [endlink][r]
        [link target=*clear_meet] →走る [endlink][r]
        [s]

    [endif]



