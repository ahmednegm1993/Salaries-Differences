import pandas as pd
df1=pd.read_excel(r'E:\\Data_analysis_projects\\Salaries Differences\dataset\\employee_data_with_depts.xlsx',sheet_name='db_dept')
df2=pd.read_excel(r'E:\\Data_analysis_projects\\Salaries Differences\dataset\\employee_data_with_depts.xlsx',sheet_name='employees')
df3 = pd.merge(df2, df1, left_on='department_id', right_on='id', how='left')
marketing_max_salary = df3[df3['department'] == 'Marketing']['salary'].max()
Engineering_max_salary = df3[df3['department'] == 'Engineering']['salary'].max()
abs_diff=abs(marketing_max_salary-Engineering_max_salary)
print(abs_diff)
