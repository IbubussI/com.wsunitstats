
    create table localization (
       id bigint not null auto_increment,
        primary key (id)
    ) engine=InnoDB;

    create table localization_ageNames (
       localization_id bigint not null,
        ageNames varchar(255)
    ) engine=InnoDB;

    create table localization_envNames (
       localization_id bigint not null,
        envNames varchar(255),
        envNames_KEY integer not null,
        primary key (localization_id, envNames_KEY)
    ) engine=InnoDB;

    create table localization_envSearchTagNames (
       localization_id bigint not null,
        envSearchTagNames varchar(255)
    ) engine=InnoDB;

    create table localization_envTagNames (
       localization_id bigint not null,
        envTagNames varchar(255)
    ) engine=InnoDB;

    create table localization_nationNames (
       localization_id bigint not null,
        nationNames varchar(255)
    ) engine=InnoDB;

    create table localization_researchNames (
       localization_id bigint not null,
        researchNames varchar(255)
    ) engine=InnoDB;

    create table localization_researchTexts (
       localization_id bigint not null,
        researchTexts varchar(255)
    ) engine=InnoDB;

    create table localization_resourceNames (
       localization_id bigint not null,
        resourceNames varchar(255)
    ) engine=InnoDB;

    create table localization_unitNames (
       localization_id bigint not null,
        unitNames varchar(255)
    ) engine=InnoDB;

    create table localization_unitSearchTagNames (
       localization_id bigint not null,
        unitSearchTagNames varchar(255)
    ) engine=InnoDB;

    create table localization_unitTagNames (
       localization_id bigint not null,
        unitTagNames varchar(255)
    ) engine=InnoDB;

    create table localization_unitTexts (
       localization_id bigint not null,
        unitTexts varchar(255)
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

    alter table localization_ageNames 
       add constraint FK39xmwy2x3hcf7no89y4x0otpb 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_envNames 
       add constraint FK5yvqgwxlxp5pav7cjh7pp66w0 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_envSearchTagNames 
       add constraint FKc47hu7l4lukrg7m84u4qrsqb1 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_envTagNames 
       add constraint FKoj5tqtnfh1imy7cmugh6odc5b 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_nationNames 
       add constraint FKt8av7idrtx7f5cs64c6ht4p6m 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_researchNames 
       add constraint FKl9v18t99s898sa3q01owcxpxu 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_researchTexts 
       add constraint FK2h826nem5oekjbqk3ubg4yjvl 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_resourceNames 
       add constraint FKln41hrixwx9asduc2l6xktw4u 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_unitNames 
       add constraint FKt657xqya55msvyfc4jncssj9n 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_unitSearchTagNames 
       add constraint FK7fl0wvk047kfdar30asvmxon4 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_unitTagNames 
       add constraint FKkgb2wgows3c48phu8kgiick6b 
       foreign key (localization_id) 
       references localization (id);

    alter table localization_unitTexts 
       add constraint FK5vll69n0tgxnwasja3x8tvpr5 
       foreign key (localization_id) 
       references localization (id);

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
