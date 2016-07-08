create table if not exists recipes (
    id serial primary key,
    name text not null,
    description text not null
);


create table if not exists tags (
    id serial primary key,
    name text not null
);

-- Common convention: Association tables are named with the two tables they join.
create table if not exists recipe_tags (
    recipe_id integer references recipes,
    tag_id integer references tags,
    primary key (recipe_id, tag_id)
);



create table if not exists pizzas (
    id serial primary key,
    name text not null
);

create table if not exists batches (
    id serial primary key,
    pizza_id integer references pizzas,
    quantity integer not null
);
