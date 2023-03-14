
    create table ability (
       id bigint not null auto_increment,
        abilityType varchar(255),
        count_ integer,
        duration float(53),
        entityId integer,
        entityName varchar(255),
        lifeTime float(53),
        makeTime float(53),
        max float(53),
        min float(53),
        stop float(53),
        enabled bit,
        onAgro bit,
        rechargeTime float(53),
        researchesAll bit,
        unitsAll bit,
        reserveLimit integer,
        reserveTime float(53),
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
        imageUrl varchar(255),
        name varchar(255),
        nation varchar(255),
        rotationSpeed float(53),
        speed integer,
        size float(53),
        carrySize integer,
        onlyInfantry bit,
        ownSize integer,
        primary key (id)
    ) engine=InnoDB;

    create table unit_abilities (
       unit_id bigint not null,
        abilities_id bigint not null
    ) engine=InnoDB;

    create table unit_armor (
       unit_id bigint not null,
        probability integer,
        value_ float(53)
    ) engine=InnoDB;

    create table unit_fullCost (
       unit_id bigint not null,
        resource varchar(255),
        value_ integer
    ) engine=InnoDB;

    create table unit_gather (
       unit_id bigint not null,
        bagSize float(53),
        env varchar(255),
        findTargetDistance float(53),
        gatherDistance float(53),
        perSecond float(53),
        putDistance float(53),
        resource varchar(255)
    ) engine=InnoDB;

    create table unit_initCost (
       unit_id bigint not null,
        resource varchar(255),
        value_ integer
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

    alter table unit_turrets 
       add constraint UK_6bnwk424et96dlv8tqwn6k4my unique (turrets_id);

    alter table unit_weapons 
       add constraint UK_3b39kb4h68srfcl8gfjtp2tcc unique (weapons_id);

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

    alter table buff_affectedUnits 
       add constraint FKlt2pjb4aykbahesuxpedq3m4w 
       foreign key (buff_id) 
       references buff (id);

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

    alter table unit_abilities 
       add constraint FKdqpqykv4fpbyi8ijw0hrdj1p2 
       foreign key (abilities_id) 
       references ability (id);

    alter table unit_abilities 
       add constraint FKiqwtjo6ves1bnntqi6x979ep5 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_armor 
       add constraint FKj8su9390vg7e7lr7av9o1jsyq 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_fullCost 
       add constraint FK32pdb1pf247m481pn1cdi0qxa 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_gather 
       add constraint FK3xbxp13iydr0j4eulw7im6qrn 
       foreign key (unit_id) 
       references unit (id);

    alter table unit_initCost 
       add constraint FKq197ldvju58yrb8ey0w6aqqmh 
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
