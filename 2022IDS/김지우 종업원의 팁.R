# Date : 2022/03/29
# 202115789 ����а� ������

install.packages('reshape2')
library(reshape2)

mean( tips[tips$time == 'Dinner', 'size'] ) # ���� �� ���
mean( tips[tips$time == 'Lunch', 'size'] ) # ���� �� ���

mean( tips[tips$day == 'Sat', 'size'] ) # ����� ��ü �� ���
mean( tips[(tips$day == 'Sat')&(tips$time == 'Lunch'), 'size'] ) # ����� ���� �� ���
mean( tips[(tips$day == 'Sat')&(tips$time == 'Dinner'), 'size'] ) # ����� ���� �� ���


mean( tips[tips$day == 'Sun', 'size'] ) # �Ͽ��� ��ü �� ���
mean( tips[(tips$day == 'Sun')&(tips$time == 'Lunch'), 'size'] ) # �Ͽ��� ���� �� ���
mean( tips[(tips$day == 'Sun')&(tips$time == 'Dinner'), 'size'] ) # �Ͽ��� ���� �� ���

## ����ϰ� �Ͽ��Ͽ��� ���� ���� �������� �����Ƿ� ���� ���� ����� ��ü ���� ����̴�.

