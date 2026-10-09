CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
(
    'BrightFuture Builders',
    'A nonprofit focused on improving community infrastructure through sustainable construction projects.',
    'info@brightfuturebuilders.org',
    'brightfuture-logo.png'
),
(
    'GreenHarvest Growers',
    'An urban farming collective promoting food sustainability and education in local neighborhoods.',
    'contact@greenharvest.org',
    'greenharvest-logo.png'
),
(
    'UnityServe Volunteers',
    'A volunteer coordination group supporting local charities and service initiatives.',
    'hello@unityserve.org',
    'unityserve-logo.png'
);
CREATE TABLE categories (
    category_id SERIAL NOT NULL PRIMARY KEY,
    category_name VARCHAR(150) NOT NULL
);

CREATE TABLE projects (
    project_id SERIAL NOT NULL PRIMARY KEY,
    project_name VARCHAR(150)
);
SELECT * FROM projects;

CREATE TABLE project_categories (
    project_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,

    PRIMARY KEY (project_id, category_id),

    FOREIGN KEY (project_id)
        REFERENCES projects(project_id),

    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);
INSERT INTO categories (category_name)
VALUES
    ('Environmental Care'),
    ('Education and Mentoring'),
    ('Community Support');
SELECT * FROM categories;

INSERT INTO projects (project_name)
VALUES
    ('Community Cleanups'),
    ('Tree Planting'),
    ('Recycling Projects'),
    ('Tutoring'),
    ('Literacy Programs'),
    ('Teaching Useful Skills'),
    ('Food Drives'),
    ('Clothing Donations'),
    ('Helping Older Adults');
SELECT * FROM projects;
INSERT INTO project_categories (project_id, category_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 3);
SELECT * FROM project_categories;	