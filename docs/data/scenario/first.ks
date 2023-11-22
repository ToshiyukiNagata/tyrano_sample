*start

[title name="走るか寝るかするメロス2"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

「走るか寝るかするメロス」[l][r]

メロスは出発した。[l][r]
[eval exp="hp = 100"]
[eval exp="time = 100"]

残り体力：[emb exp="hp"][l][r]

[link target=*tag_sleep] →寝る [endlink][r]
[link target=*tag_run] →走る [endlink][r]
[s]

*tag_sleep

[cm]

[bg storage=img0.jpg time=500]

メロスは死んだように深く眠った。[l][r]
勇者は、ひどく赤面した。[r]

【 BAD END 】[l][cm]

[jump target=*start]

*tag_run

[bg storage=run.jpg time=500]

[cm]
メロスは黒い風のように走った。[l][r]
陽は、ゆらゆら地平線に没し、まさに最後の一片の残光も、消えようとした時、メロスは疾風の如く刑場に突入した。間に合った。[r]

【 GOOD END 】[l][cm]

[jump target=*start]
