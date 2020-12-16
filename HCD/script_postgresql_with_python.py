import psycopg2


print("Connecting into the database")
con = psycopg2.connect(database="HCD", user="postgres", password="2468264!", host="127.0.0.1", port="5432")
print("Database opened successfully")

print("Creating a Table")				  
cur = con.cursor()
cur.execute('''DROP TABLE IF EXISTS HCD ;

				CREATE TABLE HCD (
				sk_id_curr int,
				target int,
				name_contract_type varchar(50),
				code_gender varchar(50),
				flag_own_car varchar(50),
				flag_own_realty varchar(50),
				cnt_children float,
				amt_income_total float,
				amt_credit float,
				credit_to_income_ratio float,
				amt_annuity float,
				anuity_to_income_ratio float,
				amt_goods_price float,
				good_price_to_credit_ratio float,
				name_type_suite varchar(50),
				name_income_type varchar(50),
				name_education_type varchar(50),
				name_family_status varchar(50),
				name_housing_type varchar(50),
				region_population_relative float,
				days_birth float,
				days_employed float,
				days_id_publish float,
				days_registration float,
				own_car_age float,
				occupation_type varchar(50),
				cnt_fam_members float,
				region_rating_client float,
				region_rating_client_w_city float,
				weekday_appr_process_start varchar(50),
				work_days varchar(50),
				hour_appr_process_start float,
				hour_time_category varchar(50),
				reg_city_not_work_city float,
				organization_type varchar(50),
				ext_source_1 float,
				ext_source_2 float,
				ext_source_3 float,
				apartments_avg float,
				landarea_avg float,
				obs_30_cnt_social_circle float,
				def_30_cnt_social_circle float,
				obs_60_cnt_social_circle float,
				def_60_cnt_social_circle float,
				days_last_phone_change float,
				max_days_credit float,
				avg_days_credit float,
				max_credit_day_overdue float,
				avg_credit_day_overdue float,
				avg_days_enddate_fact float,
				avg_days_credit_update float,
				sum_amt_annuity float,
				avg_amt_annuity float,
				avg_amt_annuity_prev float,
				sum_amt_credit float,
				max_amt_credit float,
				avg_amt_credit float,
				max_rate_down_payment float,
				count_others_purpose float,
				count_short_term float,
				count_approved_prev float,
				count_canceled_prev float,
				count_refused_prev float,
				count_unused_prev float,
				count_prev_pos float,
				count_active float,
				count_amort_debt float,
				count_approved float,
				count_canceled float,
				count_completed float,
				count_demand float,
				count_return float,
				count_signed float,
				count_xna float,
				max_sk_dpd float,
				avg_sk_dpd float,
				max_sk_dpd_def float,
				avg_sk_dpd_def float,
				sum_amt_payment float,
				avg_amt_payment float,
				max_amt_payment float,
				max_months_balance float,
				avg_months_balance float,
				sum_amt_balance float,
				max_amt_balance float,
				avg_amt_balance float,
				avg_amt_drawings_current float,
				max_amt_receivable_principal float,
				sum_cnt_drawings_atm_current float,
				avg_drawings_atm_current float,
				max_drawings_atm_current float,
				max_cnt_drawings_current float,
				fullname varchar(50),
				kabupaten_kota varchar(50),
				provinsi varchar(50)
				)
	  ;''')
print("Table created successfully")
con.commit()

print("Inserting the data")
cur = con.cursor()
cur.execute('''COPY HCD(sk_id_curr,target,name_contract_type,code_gender,flag_own_car,flag_own_realty,cnt_children,amt_income_total,amt_credit,credit_to_income_ratio,amt_annuity,anuity_to_income_ratio,amt_goods_price,good_price_to_credit_ratio,name_type_suite,name_income_type,name_education_type,name_family_status,name_housing_type,region_population_relative,days_birth,days_employed,days_id_publish,days_registration,own_car_age,occupation_type,cnt_fam_members,region_rating_client,region_rating_client_w_city,weekday_appr_process_start,work_days,hour_appr_process_start,hour_time_category,reg_city_not_work_city,organization_type,ext_source_1,ext_source_2,ext_source_3,apartments_avg,landarea_avg,obs_30_cnt_social_circle,def_30_cnt_social_circle,obs_60_cnt_social_circle,def_60_cnt_social_circle,days_last_phone_change,max_days_credit,avg_days_credit,max_credit_day_overdue,avg_credit_day_overdue,avg_days_enddate_fact,avg_days_credit_update,sum_amt_annuity,avg_amt_annuity,avg_amt_annuity_prev,sum_amt_credit,max_amt_credit,avg_amt_credit,max_rate_down_payment,count_others_purpose,count_short_term,count_approved_prev,count_canceled_prev,count_refused_prev,count_unused_prev,count_prev_pos,count_active,count_amort_debt,count_approved,count_canceled,count_completed,count_demand,count_return,count_signed,count_xna,max_sk_dpd,avg_sk_dpd,max_sk_dpd_def,avg_sk_dpd_def,sum_amt_payment,avg_amt_payment,max_amt_payment,max_months_balance,avg_months_balance,sum_amt_balance,max_amt_balance,avg_amt_balance,avg_amt_drawings_current,max_amt_receivable_principal,sum_cnt_drawings_atm_current,avg_drawings_atm_current,max_drawings_atm_current,max_cnt_drawings_current,fullname,kabupaten_kota,provinsi)
FROM 'E:\\gitlab\\work\\Fineoz\\20200818_HCD\\testing\\result_part_3.csv'
DELIMITER ','
CSV HEADER;''');

con.commit()
print("Record inserted successfully")

