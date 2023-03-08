
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

    alter table localization 
       add constraint UK_j6j9h30eydn1rkg0etaayj2is unique (locale);

    alter table unit_abilities 
       add constraint UK_2dnabq70goecdxalenkbln4jn unique (abilities_id);

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

    alter table localization_entries 
       add constraint FKr54j8wvwxlrjqi4dqbej7no3g 
       foreign key (localization_id) 
       references localization (id);

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
