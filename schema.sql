
    create table ability_action (
       duration float(53),
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        id bigint not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_death (
       id bigint not null,
        ability_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_generic_supertype (
       id bigint not null auto_increment,
        containerName varchar(255),
        containerType integer,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_on_action (
       max float(53),
        min float(53),
        stop float(53),
        enabled bit,
        onAgro bit,
        rechargeTime float(53),
        id bigint not null,
        ability_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_work (
       id bigint not null,
        ability_id bigint,
        work_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_zone_event (
       envSearchDistance integer,
        size integer,
        id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table ability_container_zone_event_abilities (
       ability_container_zone_event_id bigint not null,
        abilities_id bigint not null
    ) engine=InnoDB;

    create table ability_container_zone_event_envTags (
       ability_container_zone_event_id bigint not null,
        envTags_id bigint not null
    ) engine=InnoDB;

    create table ability_create_env (
       count_ integer,
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        id bigint not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_create_unit (
       count_ integer,
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        lifeTime float(53),
        id bigint not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_damage (
       id bigint not null,
        damage_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_generic_supertype (
       id bigint not null auto_increment,
        abilityId integer not null,
        abilityName varchar(255),
        abilityType integer not null,
        researchesAll bit,
        unitsAll bit,
        primary key (id)
    ) engine=InnoDB;

    create table ability_generic_supertype_researches (
       ability_generic_supertype_id bigint not null,
        researchId integer not null,
        researchImage varchar(255),
        researchName varchar(255)
    ) engine=InnoDB;

    create table ability_generic_supertype_units (
       ability_generic_supertype_id bigint not null,
        quantity varchar(255),
        unitId integer not null,
        unitImage varchar(255),
        unitName varchar(255),
        unitNation_id bigint
    ) engine=InnoDB;

    create table ability_research (
       entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        id bigint not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_transform (
       entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        id bigint not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table account (
       id bigint not null auto_increment,
        password BINARY(60) not null,
        username varchar(30) not null,
        primary key (id)
    ) engine=InnoDB;

    create table account_roles (
       account_id bigint not null,
        roles_id bigint not null,
        primary key (account_id, roles_id)
    ) engine=InnoDB;

    create table airplane (
       id bigint not null auto_increment,
        ascensionSpeed integer,
        flyHeight float(53),
        fuel float(53),
        healingSpeed float(53),
        kamikaze bit,
        rechargePeriod float(53),
        refuelSpeed float(53),
        primary key (id)
    ) engine=InnoDB;

    create table airplane_aerodromeTags (
       airplane_id bigint not null,
        aerodromeTags_id bigint not null
    ) engine=InnoDB;

    create table armor (
       id bigint not null auto_increment,
        probability integer,
        value_ float(53),
        primary key (id)
    ) engine=InnoDB;

    create table buff (
       id bigint not null auto_increment,
        buffId integer not null,
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        period float(53),
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table buff_affectedUnits (
       buff_id bigint not null,
        affectedUnits_id bigint not null
    ) engine=InnoDB;

    create table building (
       id bigint not null auto_increment,
        buildId integer not null,
        initHealth float(53),
        researchesAll bit,
        unitsAll bit,
        income_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table building_fullCost (
       building_id bigint not null,
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_healCost (
       building_id bigint not null,
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_initCost (
       building_id bigint not null,
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_researches (
       building_id bigint not null,
        researchId integer not null,
        researchImage varchar(255),
        researchName varchar(255)
    ) engine=InnoDB;

    create table building_units (
       building_id bigint not null,
        quantity varchar(255),
        unitId integer not null,
        unitImage varchar(255),
        unitName varchar(255),
        unitNation_id bigint
    ) engine=InnoDB;

    create table construction (
       id bigint not null auto_increment,
        constructionId integer not null,
        constructionSpeed float(53),
        constructionSpeedOnOwnTerritory float(53),
        distance float(53),
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table envtag (
       id bigint not null auto_increment,
        envId integer not null,
        envImage varchar(255),
        envName varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gather (
       id bigint not null auto_increment,
        angle float(53),
        bagSize float(53),
        findStorageDistance float(53),
        findTargetDistance float(53),
        gatherDistance float(53),
        gatherId integer not null,
        perSecond float(53),
        putDistance float(53),
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer,
        primary key (id)
    ) engine=InnoDB;

    create table gather_envTags (
       gather_id bigint not null,
        envTags_id bigint not null
    ) engine=InnoDB;

    create table gather_storageTags (
       gather_id bigint not null,
        storageTags_id bigint not null
    ) engine=InnoDB;

    create table gather_unitTags (
       gather_id bigint not null,
        unitTags_id bigint not null
    ) engine=InnoDB;

    create table heal (
       id bigint not null auto_increment,
        autoSearchTargetDistance float(53),
        autoSearchTargetPeriod float(53),
        distance float(53),
        perSecond float(53),
        searchNextDistance float(53),
        primary key (id)
    ) engine=InnoDB;

    create table heal_targetTags (
       heal_id bigint not null,
        targetTags_id bigint not null
    ) engine=InnoDB;

    create table income (
       id bigint not null auto_increment,
        period float(53),
        primary key (id)
    ) engine=InnoDB;

    create table income_value (
       income_id bigint not null,
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table localization (
       id bigint not null auto_increment,
        locale varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table localization_entries (
       localization_id bigint not null,
        entries varchar(1000),
        entries_KEY varchar(255) not null,
        primary key (localization_id, entries_KEY)
    ) engine=InnoDB;

    create table movement (
       id bigint not null auto_increment,
        rotationSpeed float(53),
        speed integer,
        weight integer,
        primary key (id)
    ) engine=InnoDB;

    create table nation (
       id bigint not null,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table research (
       id bigint not null auto_increment,
        gameId integer not null,
        image varchar(255),
        name varchar(255),
        description varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table research_upgrades (
       research_id bigint not null,
        upgrades_id bigint not null
    ) engine=InnoDB;

    create table role (
       id bigint not null auto_increment,
        role varchar(30) not null,
        primary key (id)
    ) engine=InnoDB;

    create table submarine (
       id bigint not null auto_increment,
        abilityOnFuelEnd integer,
        ascensionSpeed integer,
        swimDepth float(53),
        underwaterTime float(53),
        primary key (id)
    ) engine=InnoDB;

    create table supply (
       id bigint not null auto_increment,
        consume float(53),
        produce float(53),
        primary key (id)
    ) engine=InnoDB;

    create table tag_general (
       id bigint not null,
        gameId integer not null,
        groupName varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table transporting (
       id bigint not null auto_increment,
        carrySize integer,
        onlyInfantry bit,
        ownSize integer,
        primary key (id)
    ) engine=InnoDB;

    create table turret (
       id bigint not null auto_increment,
        rotationSpeed float(53),
        turretId integer not null,
        primary key (id)
    ) engine=InnoDB;

    create table turret_weapons (
       turret_id bigint not null,
        weapons_id bigint not null
    ) engine=InnoDB;

    create table unit (
       id bigint not null auto_increment,
        gameId integer not null,
        image varchar(255),
        name varchar(255),
        controllable bit not null,
        description varchar(1023),
        health float(53),
        lifetime float(53),
        limit_ integer,
        parentMustIdle bit,
        receiveFriendlyDamage bit,
        regenerationSpeed float(53),
        size float(53),
        storageMultiplier integer,
        threat integer,
        viewRange float(53),
        weaponOnDeath integer,
        weight integer,
        airplane_id bigint,
        build_id bigint,
        heal_id bigint,
        movement_id bigint,
        nation_id bigint,
        submarine_id bigint,
        supply_id bigint,
        transporting_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table unit_abilities (
       unit_id bigint not null,
        abilities_id bigint not null
    ) engine=InnoDB;

    create table unit_applicableResearches (
       unit_id bigint not null,
        applicableResearches integer
    ) engine=InnoDB;

    create table unit_armor (
       unit_id bigint not null,
        armor_id bigint not null
    ) engine=InnoDB;

    create table unit_construction (
       unit_id bigint not null,
        construction_id bigint not null
    ) engine=InnoDB;

    create table unit_gather (
       unit_id bigint not null,
        gather_id bigint not null
    ) engine=InnoDB;

    create table unit_searchTags (
       unit_id bigint not null,
        searchTags_id bigint not null
    ) engine=InnoDB;

    create table unit_tags (
       unit_id bigint not null,
        tags_id bigint not null
    ) engine=InnoDB;

    create table unit_turrets (
       unit_id bigint not null,
        turrets_id bigint not null
    ) engine=InnoDB;

    create table unit_weapons (
       unit_id bigint not null,
        weapons_id bigint not null
    ) engine=InnoDB;

    create table upgrade (
       id bigint not null auto_increment,
        programFile varchar(255),
        programId integer not null,
        entityId integer,
        entityImage varchar(255),
        entityName varchar(255),
        upgradeId integer not null,
        entityNation_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table upgrade_parameters (
       upgrade_id bigint not null,
        parameters varchar(255)
    ) engine=InnoDB;

    create table weapon (
       id bigint not null auto_increment,
        angle float(53),
        attackDelay float(53),
        attackGround bit,
        attackTime float(53),
        attacksPerAction integer not null,
        attacksPerAttack integer not null,
        autoAttack bit,
        avgShotTime float(53),
        charges integer,
        max float(53),
        min float(53),
        stop float(53),
        enabled bit,
        projectileId integer,
        projectileSpeed float(53),
        projectileTimeToStartCollision float(53),
        rechargePeriod float(53),
        spread float(53),
        weaponId integer not null,
        weaponType varchar(255),
        damage_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table weapon_damage (
       id bigint not null auto_increment,
        angle float(53),
        areaType varchar(255),
        damageFriendly bit,
        damagesCount integer not null,
        envDamage float(53),
        radius float(53),
        buff_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table weapon_damage_damages (
       weapon_damage_id bigint not null,
        damageType varchar(255),
        damageValue float(53)
    ) engine=InnoDB;

    create table weapon_damage_envsAffected (
       weapon_damage_id bigint not null,
        envsAffected_id bigint not null
    ) engine=InnoDB;

    create table work (
       id bigint not null auto_increment,
        enabled bit not null,
        makeTime float(53),
        reserveLimit integer,
        reserveTime float(53),
        workId integer not null,
        primary key (id)
    ) engine=InnoDB;

    create table work_cost (
       work_id bigint not null,
        image varchar(255),
        resourceId integer not null,
        resourceName varchar(255),
        value_ integer
    ) engine=InnoDB;

    alter table ability_container_zone_event_abilities 
       add constraint UK_ol7bt94dgxedhwddd8yyxig3v unique (abilities_id);

    alter table account 
       add constraint UK_gex1lmaqpg0ir5g1f5eftyaa1 unique (username);

    alter table gather_envTags 
       add constraint UK_qeda4w5by446sv6reckqmwb1v unique (envTags_id);

    alter table localization 
       add constraint UK_j6j9h30eydn1rkg0etaayj2is unique (locale);

    alter table research_upgrades 
       add constraint UK_7gdiey3v5lj970tgswajvs1y7 unique (upgrades_id);

    alter table role 
       add constraint UK_bjxn5ii7v7ygwx39et0wawu0q unique (role);

    alter table turret_weapons 
       add constraint UK_lpc37ouangmk2yok9jhvm7b9m unique (weapons_id);

    alter table unit_abilities 
       add constraint UK_2dnabq70goecdxalenkbln4jn unique (abilities_id);

    alter table unit_armor 
       add constraint UK_imexy7twea6jra8pe4lyd2a1h unique (armor_id);

    alter table unit_construction 
       add constraint UK_cf8jhs84voi31sfos291n2941 unique (construction_id);

    alter table unit_gather 
       add constraint UK_m9du0q7emwkeahfburk4n1d6p unique (gather_id);

    alter table unit_turrets 
       add constraint UK_6bnwk424et96dlv8tqwn6k4my unique (turrets_id);

    alter table unit_weapons 
       add constraint UK_3b39kb4h68srfcl8gfjtp2tcc unique (weapons_id);

    alter table ability_action 
       add constraint FK266ad6om5gjmmtq0p706pjq1m 
       foreign key (entityNation_id) 
       references nation (id);

    alter table ability_action 
       add constraint FK1l8xi8hgvu8913vrg1srqtxgv 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table ability_container_death 
       add constraint FKat10931kblwlas0j5tbfpvxda 
       foreign key (ability_id) 
       references ability_generic_supertype (id);

    alter table ability_container_death 
       add constraint FKlsr2agkj3h32ibg8h6fee5wuo 
       foreign key (id) 
       references ability_container_generic_supertype (id);

    alter table ability_container_on_action 
       add constraint FKdac3l40pnlpo63mdn3d53q8v9 
       foreign key (ability_id) 
       references ability_generic_supertype (id);

    alter table ability_container_on_action 
       add constraint FK1jknwwxw7k9xejrihvh7diomj 
       foreign key (id) 
       references ability_container_generic_supertype (id);

    alter table ability_container_work 
       add constraint FKjc4y869t6xl7psvbw5hhn27m0 
       foreign key (ability_id) 
       references ability_generic_supertype (id);

    alter table ability_container_work 
       add constraint FKsglqcpruk7qa86hc1bo1f7bbu 
       foreign key (work_id) 
       references work (id);

    alter table ability_container_work 
       add constraint FKh7k7vyepv399imswpyejimg8 
       foreign key (id) 
       references ability_container_generic_supertype (id);

    alter table ability_container_zone_event 
       add constraint FKreyg6uoxg494hm4ef4ybia5w8 
       foreign key (id) 
       references ability_container_generic_supertype (id);

    alter table ability_container_zone_event_abilities 
       add constraint FK35uldifmhyuueqeqod20gge21 
       foreign key (abilities_id) 
       references ability_generic_supertype (id);

    alter table ability_container_zone_event_abilities 
       add constraint FKll9a6h3dd8lt57d897bmck8ja 
       foreign key (ability_container_zone_event_id) 
       references ability_container_zone_event (id);

    alter table ability_container_zone_event_envTags 
       add constraint FKonphm8hjjwusxq5rd9rto9ydf 
       foreign key (envTags_id) 
       references tag_general (id);

    alter table ability_container_zone_event_envTags 
       add constraint FK9prfmqg60ux14u308v6k0grdx 
       foreign key (ability_container_zone_event_id) 
       references ability_container_zone_event (id);

    alter table ability_create_env 
       add constraint FKgd3959or9dvipnjvvncwv6adl 
       foreign key (entityNation_id) 
       references nation (id);

    alter table ability_create_env 
       add constraint FKkit8gi0j21dg1womkaaor6r1p 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table ability_create_unit 
       add constraint FKb100uo61uxreyb3rturbojef1 
       foreign key (entityNation_id) 
       references nation (id);

    alter table ability_create_unit 
       add constraint FKhf2mlef8loeoyiljr4x30hl8s 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table ability_damage 
       add constraint FKp6dan04sg94s8hsy3jcy5l6cn 
       foreign key (damage_id) 
       references weapon_damage (id);

    alter table ability_damage 
       add constraint FKa5ueud0kqbeg4p3rg5yyl84v 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table ability_generic_supertype_researches 
       add constraint FKjyukm9o6mhcwyjdluv00yonsb 
       foreign key (ability_generic_supertype_id) 
       references ability_generic_supertype (id);

    alter table ability_generic_supertype_units 
       add constraint FKqt85spjq0275of0oks7jpqrh1 
       foreign key (unitNation_id) 
       references nation (id);

    alter table ability_generic_supertype_units 
       add constraint FKlufi9hwyrrd0du0h8eym40ga6 
       foreign key (ability_generic_supertype_id) 
       references ability_generic_supertype (id);

    alter table ability_research 
       add constraint FKm3jehx0onwgt8i23oh2la304k 
       foreign key (entityNation_id) 
       references nation (id);

    alter table ability_research 
       add constraint FKffsvbrkw62kaea2ps0c9hfmdn 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table ability_transform 
       add constraint FKobcqxsw86eys0jv4j7q66pdq9 
       foreign key (entityNation_id) 
       references nation (id);

    alter table ability_transform 
       add constraint FKjl3ah1t28iqf9db7s5i39u4we 
       foreign key (id) 
       references ability_generic_supertype (id);

    alter table account_roles 
       add constraint FK70s9enq5d1oywl7v8vis5ke5w 
       foreign key (roles_id) 
       references role (id);

    alter table account_roles 
       add constraint FKtp61eta5i06bug3w1qr6286uf 
       foreign key (account_id) 
       references account (id);

    alter table airplane_aerodromeTags 
       add constraint FK3c2n7j4nhreer7xrdi9xeu7w3 
       foreign key (aerodromeTags_id) 
       references tag_general (id);

    alter table airplane_aerodromeTags 
       add constraint FKd6vjkgk3tlo4uccgrgiq2hekt 
       foreign key (airplane_id) 
       references airplane (id);

    alter table buff 
       add constraint FKgmhif7v76gy5180kr0tc2oaab 
       foreign key (entityNation_id) 
       references nation (id);

    alter table buff_affectedUnits 
       add constraint FKjoxy19g13guwmslw4nq33yuji 
       foreign key (affectedUnits_id) 
       references tag_general (id);

    alter table buff_affectedUnits 
       add constraint FKlt2pjb4aykbahesuxpedq3m4w 
       foreign key (buff_id) 
       references buff (id);

    alter table building 
       add constraint FKr4ud3a4dpn9e78iulww8bfkkd 
       foreign key (income_id) 
       references income (id);

    alter table building_fullCost 
       add constraint FK530g1mcloh1hsow7pqxotr3be 
       foreign key (building_id) 
       references building (id);

    alter table building_healCost 
       add constraint FKrj88x3frstuwr0afh533xaxgn 
       foreign key (building_id) 
       references building (id);

    alter table building_initCost 
       add constraint FK6bpif8pi2oq47tp8bupl3vmx 
       foreign key (building_id) 
       references building (id);

    alter table building_researches 
       add constraint FK161nem93qskfomm3jpdar0i81 
       foreign key (building_id) 
       references building (id);

    alter table building_units 
       add constraint FK4xsg031gxg16wvnmg5s16fa24 
       foreign key (unitNation_id) 
       references nation (id);

    alter table building_units 
       add constraint FK6964irkx8f1eb2ht3ktfeg55c 
       foreign key (building_id) 
       references building (id);

    alter table construction 
       add constraint FKq4sfublrw7wwynd3l3v5ifln4 
       foreign key (entityNation_id) 
       references nation (id);

    alter table gather_envTags 
       add constraint FKnfqjrf1r5gim88qhvry55slej 
       foreign key (envTags_id) 
       references envtag (id);

    alter table gather_envTags 
       add constraint FK22xc4voqbyj0h9qaih8vvcin3 
       foreign key (gather_id) 
       references gather (id);

    alter table gather_storageTags 
       add constraint FKg7h3ymw4dygln9jhstc45wabd 
       foreign key (storageTags_id) 
       references tag_general (id);

    alter table gather_storageTags 
       add constraint FKe7ndfvpj9ptijw6lnjtj8malc 
       foreign key (gather_id) 
       references gather (id);

    alter table gather_unitTags 
       add constraint FKswqhhgt6a0kjo0rrp9sxqclhw 
       foreign key (unitTags_id) 
       references tag_general (id);

    alter table gather_unitTags 
       add constraint FKp51d5kuasogb7i6yggbp83bgh 
       foreign key (gather_id) 
       references gather (id);

    alter table heal_targetTags 
       add constraint FKj8lgdy09vm3veabv65ioo363b 
       foreign key (targetTags_id) 
       references tag_general (id);

    alter table heal_targetTags 
       add constraint FKo3bdaxloq89mnf94d5l628un0 
       foreign key (heal_id) 
       references heal (id);

    alter table income_value 
       add constraint FKgc5pv8v3pru6g1kajo0pis6la 
       foreign key (income_id) 
       references income (id);

    alter table localization_entries 
       add constraint FKr54j8wvwxlrjqi4dqbej7no3g 
       foreign key (localization_id) 
       references localization (id);

    alter table research_upgrades 
       add constraint FK576x5xifajchphoeybkjvho4u 
       foreign key (upgrades_id) 
       references upgrade (id);

    alter table research_upgrades 
       add constraint FKsued1ejla95myd0aq6rjcsxn2 
       foreign key (research_id) 
       references research (id);

    alter table turret_weapons 
       add constraint FKbype15yhrf2iaqggdpdyqe8ma 
       foreign key (weapons_id) 
       references weapon (id);

    alter table turret_weapons 
       add constraint FK9j6evv6dfxh6ixk4p14c8eqsk 
       foreign key (turret_id) 
       references turret (id);

    alter table unit 
       add constraint FKbaj6y3adblqhqgkbu1vxpxn8k 
       foreign key (airplane_id) 
       references airplane (id);

    alter table unit 
       add constraint FKmhv6iim3sgulonx10kirbatqy 
       foreign key (build_id) 
       references building (id);

    alter table unit 
       add constraint FKm4ynt1c03h75d12tnfpwds9pd 
       foreign key (heal_id) 
       references heal (id);

    alter table unit 
       add constraint FKctvfg8wv8pp2iqr1ww9qgdbka 
       foreign key (movement_id) 
       references movement (id);

    alter table unit 
       add constraint FKsrg1n7ww0ljln3ae3rcr47ls1 
       foreign key (nation_id) 
       references nation (id);

    alter table unit 
       add constraint FKehsumcw6v6v43sjog4r65cqos 
       foreign key (submarine_id) 
       references submarine (id);

    alter table unit 
       add constraint FKgdgwiufrmt7dsdhnto19akjt3 
       foreign key (supply_id) 
       references supply (id);

    alter table unit 
       add constraint FKkqlsof7950shjongpppug3k7l 
       foreign key (transporting_id) 
       references transporting (id);

    alter table unit_abilities 
       add constraint FKh323v7d66m3cedq1dp2awt32j 
       foreign key (abilities_id) 
       references ability_container_generic_supertype (id);

    alter table unit_abilities 
       add constraint FKiqwtjo6ves1bnntqi6x979ep5 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_applicableResearches 
       add constraint FKgbdkx16y7i8yj9uwlwoafjice 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_armor 
       add constraint FK5tcqtqjurnuyb6tnrqagb9xth 
       foreign key (armor_id) 
       references armor (id);

    alter table unit_armor 
       add constraint FKj8su9390vg7e7lr7av9o1jsyq 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_construction 
       add constraint FK51g1s82lg885be767qx72deqr 
       foreign key (construction_id) 
       references construction (id);

    alter table unit_construction 
       add constraint FK73m1yfplbh4bthjj4sbksmx1n 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_gather 
       add constraint FKfwqxjv6pe31y1ucik9sqr45je 
       foreign key (gather_id) 
       references gather (id);

    alter table unit_gather 
       add constraint FK3xbxp13iydr0j4eulw7im6qrn 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_searchTags 
       add constraint FKsicoocrfwd0br4bdlfrp2yiii 
       foreign key (searchTags_id) 
       references tag_general (id);

    alter table unit_searchTags 
       add constraint FKpjsebrxxr0nykr6gpqlsyblas 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_tags 
       add constraint FK57039qpancdm5h2l6o62j6860 
       foreign key (tags_id) 
       references tag_general (id);

    alter table unit_tags 
       add constraint FKwk5imly15apatbi71i8ysx82 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_turrets 
       add constraint FK1e34tbe06ytka6rxhyk94ureo 
       foreign key (turrets_id) 
       references turret (id);

    alter table unit_turrets 
       add constraint FKkpo3wj8apny9kovltul68ct9w 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_weapons 
       add constraint FK3bc4v6flq9t0eein702x13uct 
       foreign key (weapons_id) 
       references weapon (id);

    alter table unit_weapons 
       add constraint FKi5u8i79qq0pc2tbd8f41fl9or 
       foreign key (unit_id) 
       references unit (id);

    alter table upgrade 
       add constraint FK4j4kq5ie159xflteux1p3xit2 
       foreign key (entityNation_id) 
       references nation (id);

    alter table upgrade_parameters 
       add constraint FKm3ghnsp5bkg2w59s86a1usirk 
       foreign key (upgrade_id) 
       references upgrade (id);

    alter table weapon 
       add constraint FK4o17xuwme88eq6saahqopcku2 
       foreign key (damage_id) 
       references weapon_damage (id);

    alter table weapon_damage 
       add constraint FK4bm4w7jm83pgqrjtec25wa2u7 
       foreign key (buff_id) 
       references buff (id);

    alter table weapon_damage_damages 
       add constraint FK5tin2lnvrvoulp84og0ensl50 
       foreign key (weapon_damage_id) 
       references weapon_damage (id);

    alter table weapon_damage_envsAffected 
       add constraint FKq52akti9xf58fm7nkfqudo7h 
       foreign key (envsAffected_id) 
       references tag_general (id);

    alter table weapon_damage_envsAffected 
       add constraint FK1clx3dc6xsoxseti53xe2od72 
       foreign key (weapon_damage_id) 
       references weapon_damage (id);

    alter table work_cost 
       add constraint FKs03sqbi6k93sapbdrjgn1834c 
       foreign key (work_id) 
       references work (id);
