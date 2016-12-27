

create table kid_study(
v_no number(10) primary key,
v_title varchar2(100),
v_content varchar2(1000),
v_photo varchar2(100),
v_main varchar2(100),
v_count number(10),
v_good number(10),
v_goodog VARCHAR2(4000)
);


create table group_purchase(
b_no number(10) primary key,
we_title varchar2(100),
we_content varchar2(3000),
we_photo1 varchar2(100),
we_photo2 varchar2(100),
we_photo3 varchar2(100),
we_price number(10),
we_count number(10),
we_sold number(10),
we_max number(10),
we_start date,
we_end date,
we_deposit date,
u_id varchar2(30),
we_ max;
);

create table normal_board(
b_no number(10) primary key,
b_cate varchar2(30),
b_title varchar2(100),
b_content varchar2(3000),
b_photo1 varchar2(100),
b_photo2 varchar2(100),
b_photo3 varchar2(100),
b_video varchar2(100),
b_good number(10),
b_count number(10),
b_date date,
b_ip varchar2(100),
b_addr varchar(100),
b_report number(10),
b_nick varchar2(30),
u_id varchar2(30),
b_recount number(10),
b_goodog VARCHAR2(4000),
u_id varchar2(30),
b_scate varchar2(100),
b_state varchar2(20)
);

create table qna_board(
b_no number(10) primary key,
in_cate varchar2(100),
in_title varchar2(100),
in_content varchar2(3000),
in_photo1 varchar2(100),
in_photo2 varchar2(100),
in_photo3 varchar2(100),
in_point number(10),
in_count number(10),
in_date date,
in_ip varchar2(100),
in_report number(10),
in_nick varchar2(30),
u_id varchar2(30),
in_goodog varchar2(4000),
in_good number(20),
in_recount varchar2(20)
);



create table kid_game(
g_no number(10) primary key,
g_title varchar2(100),
g_content varchar2(3000),
g_photo varchar2(100),
g_flash varchar2(100),
g_count number(10),
g_good number(10),
g_goodog varchar2(4000)
);

create table qna_answer(
b_no number(10) primary key,
a_nick varchar2(30),
a_content varchar2(3000),
a_photo1 varchar2(100),
a_photo2 varchar2(100),
a_photo3 varchar2(100),
a_date date,
a_ip varchar2(100),
a_report number(10),
a_no number(10),
a_recount number(10)
);

create table kid_video(
d_no number(10) primary key,
d_title varchar2(100),
d_content varchar2(3000),
d_photo varchar2(100),
d_video varchar2(100),
d_count number(10),
d_good number(10),
d_goodog varchar2(4000)
);

create table reply(
re_no number(10) primary key,
re_date date,
re_content varchar2(1000),
re_id varchar2(30),
b_no number(10)
re_nick varchar2(100),
re_ip varchar2(100)
);



create table faq_admin(
q_no number(10) primary key,
q_date date,
q_state varchar2(100),
q_title varchar2(100),
q_content varchar2(4000),
u_id varchar2(30),
q_answer varchar2(4000)
);


create table payment_info(
pr_no number(10) primary key,
pr_date date,
pr_content varchar2(3000),
pr_price number(10),
pr_id varchar2(30),
b_no number(10),
pr_count number(10),
pr_addr varchar2(200),
pr_tel varchar2(13),
pr_name varchar2(20),
pr_pay varchar2(100),
pr_title varchar2(20),
pr_photo varchar2(100)
);

create table mom_user(
U_ID VARCHAR2(30) primary key,
U_NICK VARCHAR2(30),
U_NAME VARCHAR2(30),
U_PASS VARCHAR2(30),
U_TEL VARCHAR2(30),
U_EMAIL VARCHAR2(100),
U_ADDR	VARCHAR2(500),
U_POINT number(10),
U_STATE VARCHAR2(30),
U_SIGNUP_DATE DATE,
U_STOP_DATE DATE,
U_REPORT number(5),
U_NOREAD VARCHAR2(500),
U_LVL VARCHAR2(100),
U_RESENT_DATE DATE,
U_MESSAGE number(20)
)

create table answer_reply(
AR_NO number(10),
A_NO number(10),
AR_CONTENT VARCHAR2(400),
AR_NICK VARCHAR2(20),
AR_ID VARCHAR2(20),
AR_DATE DATE
)

 create SEQUENCE MOM_BOARD_NO
    INCREMENT BY 1 ;
  create SEQUENCE MOM_GAME_NO
    INCREMENT BY 1 ; 

create SEQUENCE MOM_MESSAGE_NO
INCREMENT BY 1 ; 

create SEQUENCE MOM_PAY_NO
INCREMENT BY 1 ; 

create SEQUENCE MOM_QNA_NO
INCREMENT BY 1 ; 

create SEQUENCE MOM_REPLY_NO
INCREMENT BY 1 ; 

create SEQUENCE MOM_VIDEO_NO
INCREMENT BY 1 ; 

