CREATE TABLE 'BREAK' (
  'BREAK_ID' NUMBER,
  'LINE_ID' NUMBER,
  'BREAK_DURATION' NUMBER,
  'BREAK_NAME' VARCHAR2(20)
) CREATE TABLE 'BUS' (
  'BUS_ID' NUMBER(1, 0),
  'PLATE_NUMBER' VARCHAR2(20),
  'INSPECTION_DATE' DATE,
  'CAPACITY' NUMBER,
  'MODEL_NUMBER' NUMBER(4, 0),
  'DRIVER_ID' NUMBER
) CREATE TABLE 'DRIVER' (
  'DRIVER_ID' NUMBER,
  'SSN' NUMBER(11, 0),
  'SALARY' NUMBER,
  'AGE' NUMBER,
  'LAST_NAME' VARCHAR2(20),
  'FIRST_NAME' VARCHAR2(20),
  'SHIFT_HOURS' NUMBER
) CREATE TABLE 'DRIVER_ASSISTANT' (
  'SSN' NUMBER,
  'SALARY' NUMBER,
  'AGE' NUMBER,
  'LAST_NAME' VARCHAR2(20),
  'FIRST_NAME' VARCHAR2(20),
  'SHIFT_HOURS' NUMBER(*, 0),
  'BUS_ID' NUMBER,
  'DRIVER_ID' NUMBER,
  'ASSISTANT_ID' NUMBER
) CREATE TABLE 'EXPEDITION' (
  'EXPED_ID' NUMBER,
  'BUS_ID' NUMBER,
  'LINE_ID' NUMBER,
  'DEPARTURE_TIME' NUMBER,
  'ARRIVAL_TIME' NUMBER
) CREATE TABLE 'LINE' (
  'LINE_ID' NUMBER,
  'DEPARTURE_POINT' VARCHAR2(20),
  'DROPOFF_POINT' VARCHAR2(20)
) CREATE TABLE 'NEEDED_FOR' ('EXPED_ID' NUMBER, 'TICKET_NUMBER' NUMBER) CREATE TABLE 'PASSANGER' (
  'ID' NUMBER(11, 0),
  'BUS_ID' NUMBER,
  'GENDER' VARCHAR2(20),
  'LAST_NAME' VARCHAR2(20),
  'FIRST_NAME' VARCHAR2(20),
  'AGE' NUMBER
) CREATE TABLE 'STOP' (
  'STOP_ID' NUMBER,
  'LINE_ID' NUMBER,
  'STOP_NAME' VARCHAR2(20)
) CREATE TABLE 'TICKET' (
  'TICKET_NO' NUMBER,
  'PASSENGER_ID' NUMBER,
  'SEAT_NO' NUMBER,
  'PRICE' NUMBER
)
Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('1', '1', '30', 'Istanbul');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('2', '1', '15', 'Izmit');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('3', '2', '45', 'Trabzon');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('4', '2', '20', 'Rize');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('5', '3', '30', 'Ankara');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('6', '3', '60', 'Eskisehir');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('7', '4', '30', 'Sivas');

Insert into
  BREAK (BREAK_ID, LINE_ID, BREAK_DURATION, BREAK_NAME)
values
  ('8', '4', '10', 'Kayseri');

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '8',
    '55 KMK 44',
    to_date('21/12/2024', 'DD/MM/RRRR'),
    '37',
    '1970',
    '8'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '1',
    '55 HMS 1967',
    to_date('22/07/2026', 'DD/MM/RRRR'),
    '37',
    '2012',
    '6'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '2',
    '55 GS 1905',
    to_date('22/11/2026', 'DD/MM/RRRR'),
    '34',
    '2022',
    '4'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '3',
    '55 FB 1907',
    to_date('21/05/2026', 'DD/MM/RRRR'),
    '37',
    '2020',
    '2'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '4',
    '55 SM 9948',
    to_date('03/01/2026', 'DD/MM/RRRR'),
    '19',
    '1990',
    '5'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '5',
    '55 PER 1826',
    to_date('06/09/2026', 'DD/MM/RRRR'),
    '37',
    '2022',
    '1'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '6',
    '55 ALI 2828',
    to_date('14/08/2026', 'DD/MM/RRRR'),
    '37',
    '2001',
    '7'
  );

Insert into
  BUS (
    BUS_ID,
    PLATE_NUMBER,
    INSPECTION_DATE,
    CAPACITY,
    MODEL_NUMBER,
    DRIVER_ID
  )
values
  (
    '7',
    '55 KTA 61',
    to_date('09/01/2026', 'DD/MM/RRRR'),
    '37',
    '2001',
    '3'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '1',
    '13579246801',
    '25000',
    '32',
    'Aker',
    'Ahmet',
    '5'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '2',
    '26485367346',
    '26000',
    '45',
    '�evik',
    'Talat',
    '7'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '3',
    '43355864218',
    '25500',
    '33',
    'Din�er',
    'Arslan',
    '5'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '4',
    '53686895734',
    '22000',
    '29',
    'Sabah',
    '�nal',
    '2'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '5',
    '38431200262',
    '26000',
    '55',
    'Bilge',
    'Caner',
    '8'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '6',
    '12349563214',
    '25000',
    '43',
    'Kalkan',
    'Sait',
    '6'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '7',
    '90678437971',
    '23000',
    '25',
    'Hamdi',
    'Ridvan',
    '6'
  );

Insert into
  DRIVER (
    DRIVER_ID,
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS
  )
values
  (
    '8',
    '32332332332',
    '323000',
    '99',
    'Bari',
    'Abdul',
    '3'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '52528075527',
    '17002',
    '26',
    'Mithat',
    'Rizvan',
    '10',
    '5',
    null,
    '1'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '9571336075',
    '17002',
    '24',
    'Hasim',
    'H�sn�',
    '9',
    '3',
    null,
    '2'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '14026955012',
    '17002',
    '21',
    'Semsettin',
    'Galip',
    '7',
    '1',
    null,
    '3'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '94710477425',
    '17002',
    '28',
    'Burak',
    'Cemil',
    '7',
    '4',
    null,
    '5'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '23182591872',
    '17002',
    '30',
    'Ayaz',
    'Utku',
    '7',
    '6',
    null,
    '6'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '76802225825',
    '17002',
    '30',
    'Caner',
    'Zafer',
    '7',
    '7',
    null,
    '7'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '76802225826',
    '17002',
    '30',
    'KAkkaya',
    'Kazim Murat',
    '7',
    '8',
    null,
    '7'
  );

Insert into
  DRIVER_ASSISTANT (
    SSN,
    SALARY,
    AGE,
    LAST_NAME,
    FIRST_NAME,
    SHIFT_HOURS,
    BUS_ID,
    DRIVER_ID,
    ASSISTANT_ID
  )
values
  (
    '14026955013',
    '17002',
    '24',
    'Temel',
    'Fatih',
    '7',
    '2',
    null,
    '4'
  );

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('1', '6', '3', '10,3', '23,3');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('2', '2', '4', '12,3', '21,3');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('3', '1', '2', '9,3', '15,3');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('4', '3', '1', '3', '15,15');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('5', '4', '2', '12,3', '2,3');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('6', '5', '3', '12', '20,45');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('7', '7', '1', '4', '23');

Insert into
  EXPEDITION (
    EXPED_ID,
    BUS_ID,
    LINE_ID,
    DEPARTURE_TIME,
    ARRIVAL_TIME
  )
values
  ('8', '8', '4', '3', '23');

Insert into
  LINE (LINE_ID, DEPARTURE_POINT, DROPOFF_POINT)
values
  ('1', 'Samsun', 'Kirklareli');

Insert into
  LINE (LINE_ID, DEPARTURE_POINT, DROPOFF_POINT)
values
  ('2', 'Samsun', 'Artvin');

Insert into
  LINE (LINE_ID, DEPARTURE_POINT, DROPOFF_POINT)
values
  ('3', 'Samsun', 'Izmir');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('1', '1');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('1', '2');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('1', '3');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('1', '4');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('1', '5');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('2', '6');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('2', '7');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('2', '8');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('2', '9');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('2', '10');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('3', '11');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('3', '12');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('3', '13');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('3', '14');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('3', '15');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('4', '16');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('4', '17');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('4', '18');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('4', '19');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('4', '20');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('5', '21');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('5', '22');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('5', '23');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('5', '24');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('5', '25');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('6', '26');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('6', '27');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('6', '28');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('6', '29');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('6', '30');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('7', '31');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('7', '32');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('7', '33');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('7', '34');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('7', '35');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('8', '36');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('8', '37');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('8', '38');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('8', '39');

Insert into
  NEEDED_FOR (EXPED_ID, TICKET_NUMBER)
values
  ('8', '40');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('1', '1', 'Male', 'Yilmaz', 'Ahmet', '28');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('2', '1', 'Female', 'Kaya', 'Ayse', '35');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('3', '1', 'Male', 'Demir', 'Mehmet', '22');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('4', '1', 'Female', '�elik', 'Fatma', '30');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('5', '1', 'Male', 'Erdem', 'Cem', '25');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('6', '2', 'Female', 'Ko�', 'G�lay', '27');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('7', '2', 'Male', 'Aydin', 'Emre', '32');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('8', '2', 'Female', 'Sahin', 'Zeynep', '40');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('9', '2', 'Male', 'Kurt', 'Ali', '21');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('10', '2', 'Female', 'Kaplan', 'Sevim', '45');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('11', '3', 'Male', 'G�nes', 'Can', '33');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('12', '3', 'Female', 'Dogan', 'Elif', '28');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('13', '3', 'Male', 'Simsek', 'Tolga', '25');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('14', '3', 'Female', 'Ates', 'Derya', '31');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('15', '3', 'Male', 'Acar', 'Mustafa', '29');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('16', '4', 'Female', 'Kurtulus', 'Leyla', '37');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('17', '4', 'Male', 'Karahan', 'Serkan', '26');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('18', '4', 'Female', 'Kili�', 'Selin', '24');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('19', '4', 'Male', 'Cengiz', 'Baris', '30');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('20', '4', 'Female', 'Tas', 'Aysun', '33');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('21', '5', 'Male', 'Kayaalp', 'Umut', '28');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('22', '5', 'Female', 'Yildiz', 'Asli', '29');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('23', '5', 'Male', 'G�r', 'Caner', '34');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('24', '5', 'Female', 'Kara', 'Zehra', '32');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('25', '5', 'Male', 'Okan', 'Burak', '27');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('26', '6', 'Female', 'Ko�', 'Deniz', '31');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('27', '6', 'Male', 'Aydin', 'Tolga', '23');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('28', '6', 'Female', 'Sahin', 'Irem', '26');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('29', '6', 'Male', 'Kurt', 'Orhan', '35');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('30', '6', 'Female', 'Kaplan', 'Seda', '30');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('31', '7', 'Male', 'G�nes', 'Mert', '29');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('32', '7', 'Female', 'Dogan', 'Buse', '27');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('33', '7', 'Male', 'Simsek', 'Ege', '24');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('34', '7', 'Female', 'Ates', 'Ilayda', '28');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('35', '7', 'Male', 'Acar', 'Berk', '26');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('36', '8', 'Female', 'Kurtulus', 'Ceren', '25');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('37', '8', 'Male', 'Karahan', 'Eren', '32');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('38', '8', 'Female', 'Kiliç', 'Ilayda', '28');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('39', '8', 'Male', 'Cengiz', 'Tolga', '30');

Insert into
  PASSANGER (ID, BUS_ID, GENDER, LAST_NAME, FIRST_NAME, AGE)
values
  ('40', '8', 'Female', 'Tas', 'Melis', '27');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('1', '1', 'Sinop');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('2', '1', 'Karabük');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('3', '1', 'Zonguldak');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('4', '1', 'Istanbul');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('5', '1', 'Edirne');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('6', '2', 'Ordu');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('7', '2', 'Giresun');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('8', '2', 'Trabzon');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('9', '2', 'Bayburt');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('10', '2', 'Rize');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('11', '2', 'Artvin');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('12', '3', 'Çorum');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('13', '3', 'Çankiri');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('14', '3', 'Ankara');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('15', '3', 'Eskisehir');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('16', '3', 'Usak');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('17', '3', 'Izmir');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('18', '4', 'Çorum');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('19', '4', 'Yozgat');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('20', '4', 'Kayseri');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('21', '4', 'Nigde');

Insert into
  STOP (STOP_ID, LINE_ID, STOP_NAME)
values
  ('22', '4', 'Adana');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('1', '1', '1', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('2', '2', '2', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('3', '3', '3', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('4', '4', '4', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('5', '5', '5', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('6', '6', '1', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('7', '7', '2', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('8', '8', '3', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('9', '9', '4', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('10', '10', '5', '549,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('11', '11', '1', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('12', '12', '2', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('13', '13', '3', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('14', '14', '4', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('15', '15', '5', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('16', '16', '1', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('17', '17', '2', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('18', '18', '3', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('19', '19', '4', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('20', '20', '5', '799,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('21', '21', '1', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('23', '23', '2', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('22', '22', '3', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('24', '24', '4', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('25', '25', '5', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('26', '26', '1', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('27', '27', '2', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('28', '28', '3', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('29', '29', '4', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('30', '30', '5', '1099,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('31', '31', '1', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('32', '32', '2', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('33', '33', '3', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('34', '34', '4', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('35', '35', '5', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('36', '36', '1', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('37', '37', '2', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('38', '38', '3', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('39', '39', '4', '899,99');

Insert into
  TICKET (TICKET_NO, PASSENGER_ID, SEAT_NO, PRICE)
values
  ('40', '40', '5', '899,99');
