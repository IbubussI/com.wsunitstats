
    create table ability (
       id bigint not null auto_increment,
        abilityType varchar(255),
        count_ integer,
        duration float(53),
        entityId integer,
        entityName varchar(255),
        lifeTime float(53),
        makeTime float(53),
        researchesAll bit,
        unitsAll bit,
        reserveLimit integer,
        reserveTime float(53),
        onAction_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table ability_cost (
       ability_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table ability_researches (
       ability_id bigint not null,
        researchId integer not null,
        researchName varchar(255)
    ) engine=InnoDB;

    create table ability_units (
       ability_id bigint not null,
        max integer,
        min integer,
        unitId integer not null,
        unitName varchar(255)
    ) engine=InnoDB;

    create table airplane (
       id bigint not null auto_increment,
        ascensionSpeed integer,
        flyHeight float(53),
        flyTime float(53),
        healingSpeed float(53),
        kamikaze bit,
        rechargingSpeed float(53),
        refuelingSpeed float(53),
        primary key (id)
    ) engine=InnoDB;

    create table airplane_aerodromeTags (
       airplane_id bigint not null,
        aerodromeTags varchar(255)
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
        name varchar(255),
        period float(53),
        primary key (id)
    ) engine=InnoDB;

    create table buff_affectedUnits (
       buff_id bigint not null,
        affectedUnits varchar(255)
    ) engine=InnoDB;

    create table building (
       id bigint not null auto_increment,
        period float(53),
        initHealth float(53),
        researchesAll bit,
        unitsAll bit,
        primary key (id)
    ) engine=InnoDB;

    create table building_fullCost (
       building_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_healCost (
       building_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_initCost (
       building_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table building_researches (
       building_id bigint not null,
        researchId integer not null,
        researchName varchar(255)
    ) engine=InnoDB;

    create table building_units (
       building_id bigint not null,
        max integer,
        min integer,
        unitId integer not null,
        unitName varchar(255)
    ) engine=InnoDB;

    create table building_value (
       building_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table construction (
       id bigint not null auto_increment,
        buildId integer,
        constructionSpeed float(53),
        distance float(53),
        primary key (id)
    ) engine=InnoDB;

    create table gather (
       id bigint not null auto_increment,
        bagSize float(53),
        findTargetDistance float(53),
        gatherDistance float(53),
        perSecond float(53),
        putDistance float(53),
        resource varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gather_envTags (
       gather_id bigint not null,
        envTags varchar(255)
    ) engine=InnoDB;

    create table heal (
       id bigint not null auto_increment,
        distance float(53),
        perSecond float(53),
        primary key (id)
    ) engine=InnoDB;

    create table heal_targetTags (
       heal_id bigint not null,
        targetTags varchar(255)
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
        primary key (id)
    ) engine=InnoDB;

    create table onaction (
       id bigint not null auto_increment,
        max float(53),
        min float(53),
        stop float(53),
        enabled bit,
        onAgro bit,
        rechargeTime float(53),
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
        nation varchar(255),
        controllable bit,
        health float(53),
        lifetime float(53),
        limit_ integer,
        parentMustIdle bit,
        receiveFriendlyDamage bit,
        regenerationSpeed float(53),
        searchTags varbinary(255),
        size float(53),
        tags varbinary(255),
        threat integer,
        viewRange float(53),
        weaponOnDeath integer,
        airplane_id bigint,
        build_id bigint,
        heal_id bigint,
        movement_id bigint,
        submarine_id bigint,
        supply_id bigint,
        transporting_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table unit_abilities (
       unit_id bigint not null,
        abilities_id bigint not null
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

    create table unit_turrets (
       unit_id bigint not null,
        turrets_id bigint not null
    ) engine=InnoDB;

    create table unit_weapons (
       unit_id bigint not null,
        weapons_id bigint not null
    ) engine=InnoDB;

    create table weapon (
       id bigint not null auto_increment,
        areaType varchar(255),
        attackTime integer,
        attacksPerAction integer not null,
        attacksPerAttack integer not null,
        autoAttack bit,
        charges integer,
        damageFriendly bit,
        damagesCount integer not null,
        max float(53),
        min float(53),
        stop float(53),
        enabled bit,
        envDamage float(53),
        projectileId integer,
        projectileSpeed float(53),
        projectileTimeToStartCollision float(53),
        rechargePeriod float(53),
        spread float(53),
        buff_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table weapon_damages (
       weapon_id bigint not null,
        damageType varchar(255),
        damageValue float(53)
    ) engine=InnoDB;

    create table weapon_envsAffected (
       weapon_id bigint not null,
        envsAffected varchar(255)
    ) engine=InnoDB;

    alter table localization 
       add constraint UK_j6j9h30eydn1rkg0etaayj2is unique (locale);

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

    alter table ability 
       add constraint FK3yo3vt5xhee64g8e1xsrx9u9a 
       foreign key (onAction_id) 
       references onaction (id);

    alter table ability_cost 
       add constraint FKb3ofn2mr8w0b0k6nu2772nx2h 
       foreign key (ability_id) 
       references ability (id);

    alter table ability_researches 
       add constraint FKkrxhxaoalsdcty49erhur4rro 
       foreign key (ability_id) 
       references ability (id);

    alter table ability_units 
       add constraint FKkhvs4vetcidxnnavyrjhw9ewg 
       foreign key (ability_id) 
       references ability (id);

    alter table airplane_aerodromeTags 
       add constraint FKd6vjkgk3tlo4uccgrgiq2hekt 
       foreign key (airplane_id) 
       references airplane (id);

    alter table buff_affectedUnits 
       add constraint FKlt2pjb4aykbahesuxpedq3m4w 
       foreign key (buff_id) 
       references buff (id);

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
       add constraint FK6964irkx8f1eb2ht3ktfeg55c 
       foreign key (building_id) 
       references building (id);

    alter table building_value 
       add constraint FK1o2wsit1wkwmdexrqy3ywy50o 
       foreign key (building_id) 
       references building (id);

    alter table gather_envTags 
       add constraint FK22xc4voqbyj0h9qaih8vvcin3 
       foreign key (gather_id) 
       references gather (id);

    alter table heal_targetTags 
       add constraint FKo3bdaxloq89mnf94d5l628un0 
       foreign key (heal_id) 
       references heal (id);

    alter table localization_entries 
       add constraint FKr54j8wvwxlrjqi4dqbej7no3g 
       foreign key (localization_id) 
       references localization (id);

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
       add constraint FKdqpqykv4fpbyi8ijw0hrdj1p2 
       foreign key (abilities_id) 
       references ability (id);

    alter table unit_abilities 
       add constraint FKiqwtjo6ves1bnntqi6x979ep5 
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

    alter table weapon 
       add constraint FK6yy30tce8ofl4tynr0sb2t5es 
       foreign key (buff_id) 
       references buff (id);

    alter table weapon_damages 
       add constraint FK1b5roq2uelxn8iyepayi4cpk2 
       foreign key (weapon_id) 
       references weapon (id);

    alter table weapon_envsAffected 
       add constraint FK3agcghm3ile11w5pq7iygvwnf 
       foreign key (weapon_id) 
       references weapon (id);
