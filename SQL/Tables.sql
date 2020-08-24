DROP TABLE IF EXISTS Enviorment, Player, Transform, Enemy, Animation, Audio;


-- "Enviorment"
CREATE TABLE "Enviorment" (
"EnviormentID" INT NOT NULL,
"Name" INT NOT NULL,
"Type" VARCHAR(45) NOT NULL,
"Tag" INT NOT NULL,
"Transform_Position" INT NOT NULL,
PRIMARY KEY ("EnviormentID")
);

-- "Player"
CREATE TABLE "Player" (
"PlayerID" INT NOT NULL,
"Level" INT NOT NULL,
"Attack" VARCHAR(45) NOT NULL,
"Health" INT NOT NULL,
"Tag" INT NOT NULL,
"Transform_Position" INT NOT NULL,
PRIMARY KEY ("PlayerID"),
FOREIGN KEY ("Transform_Position")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- "Transform"
CREATE TABLE "Transform" (
"TransformID" INT NOT NULL,
"Position" INT NOT NULL,
"Horizontal Movement" VARCHAR(45) NOT NULL,
"Vertical Movement" VARCHAR(45) NOT NULL,
"Scale" VARCHAR(45) NOT NULL,
"Enemy_Tag" INT NOT NULL,
"Animation_Time" INT NOT NULL,
"Audio_Length" INT NOT NULL,
PRIMARY KEY ("TransformID")
);


-- "Enemy"
CREATE TABLE "Enemy" (
"EnemyID" INT NOT NULL,
"Tag" INT NOT NULL,
"Type" VARCHAR(45) NOT NULL,
"Health" VARCHAR(45) NOT NULL,
PRIMARY KEY ("EnemyID")
);


-- "Animation"
CREATE TABLE "Animation" (
"AnimationID" INT NOT NULL,
"Time" INT NOT NULL,
"Frames" VARCHAR(45) NOT NULL,
"Status" VARCHAR(45) NOT NULL,
"Audio Length" INT NOT NULL,
PRIMARY KEY ("AnimationID")
);

-- "Audio"
CREATE TABLE "Audio" (
"AudioID" INT NOT NULL,
"Length" INT NOT NULL,
"Format" VARCHAR(45) NOT NULL,
PRIMARY KEY ("AudioID")
);