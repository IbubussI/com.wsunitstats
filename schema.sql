
    create table LocalizationModel (
       id bigint not null auto_increment,
        locale varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table LocalizationModel_entries (
       LocalizationModel_id bigint not null,
        entries varchar(255),
        entries_KEY varchar(255) not null,
        primary key (LocalizationModel_id, entries_KEY)
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

    alter table LocalizationModel 
       add constraint UK_toseld3cxq1bwh4699h5o48je unique (locale);

    alter table LocalizationModel_entries 
       add constraint FKm4exc3s2ci29yebyl9o2tvk4t 
       foreign key (LocalizationModel_id) 
       references LocalizationModel (id);

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
