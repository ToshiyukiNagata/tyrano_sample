*start

    [title name="走るか寝るかするメロス2"]
    [hidemenubutton]
    [wait time=200]
    [freeimage layer="base"]

    「走るか寝るかするメロス」[l][r]

    メロスは出発した。[r]
    [eval exp="hp = 100"]
    [eval exp="jikan = 100"]
    [eval exp="kyori = 50"]

    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと[emb exp="kyori"]km[l]

    [link target=*tag_sleep_1] →寝る [endlink][r]
    [link target=*tag_run_1] →走る [endlink][r]
    [s]

*tag_sleep_1

    [cm]

    [bg storage=img0.jpg time=500]

    [eval exp="hp = 100+10"]
    [eval exp="jikan = 100-10"]
    [eval exp="kyori = 50"]

    メロスは休んだ。[r]
    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと[emb exp="kyori"]km[r]

    [link target=*tag_sleep_1] →寝る [endlink][r]
    [link target=*tag_run_1] →走る [endlink][r]
    [s]

    [cm]


*tag_run_1

    [bg storage=run.jpg time=500]
    
    [eval exp="hp = 100-10"]
    [eval exp="jikan = 100-10"]
    [eval exp="kyori = 50-10"]

    [cm]
    メロスは走った。[r]
    残り体力：[emb exp="hp"][r]
    残り時間：[emb exp="jikan"]時間[r]
    セリヌンティウスまであと[emb exp="kyori"]km[r]

    [link target=*tag_sleep_1] →寝る [endlink][r]
    [link target=*tag_run_1] →走る [endlink][r]
    [s]

    [cm]

