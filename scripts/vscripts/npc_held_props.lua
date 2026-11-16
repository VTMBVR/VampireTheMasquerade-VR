-- Source 1 clips that were authored with an object must keep that object in
-- Source 2. Prop selection is independent of state-machine sequencing family.
return {
    models={
        phone="models/props/vtmbvr/mobile_phone.vmdl",
        cigarette="models/props/vtmbvr/cigarette.vmdl",
        drink="models/props/beer_bottle_1.vmdl",
        glass="models/props/interior_deco/tabletop_glass.vmdl",
    },
    familyProps={phone="phone",cigarette="cigarette",drink="drink"},
    clipProps={
        party_idle="glass",party_laugh="glass",party_look_around="glass",
        party_listen_idle1="glass",party_listen_idle2="glass",
        party_listen_idle3="glass",party_talk_idle1="glass",
    },
    -- The imported male finger chains are longer than the female ones. Their
    -- grasp centres therefore differ even though both attachments are r_hand.
    grips={
        phone={female={origin={2.1,1.1,0.25},angles={0,90,90},scale=1.1},male={origin={2.8,2.0,0.5},angles={0,90,90},scale=1.25}},
        cigarette={female={origin={4.8,0.5,0.65},angles={0,-90,0}},male={origin={6.65,1.4,0.83},angles={0,-90,0}}},
        drink={female={origin={4.1,1.4,-3},angles={0,0,0}},male={origin={5.8,1.9,-3},angles={0,0,0}}},
        glass={female={origin={3.2,1.3,-1.5},angles={0,0,0}},male={origin={4.3,1.7,-1.5},angles={0,0,0}}},
    },
    smoke={effect="particles/vtmbvr/cigarette_smoke.vpcf",tip={2.58,0,0}},
}
