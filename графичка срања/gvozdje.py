import matplotlib.pyplot as plt 
import numpy as np

year = [2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012]
kolicina_bakra = [12000, 10000, 28000, 40000, 30000, 32500, 28000, 20900, 27500, 32500]
plt.bar(year, kolicina_bakra, color='blue')
plt.xlabel('Године')
#plt.ylabel('Производња електричног бакра (у тонима)')
plt.legend()
plt.title('Производња електричног бакра (у тонима)')
plt.show()
year = [2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012]
kolicina_gvozdja = [590, 970, 1030, 1450, 1320, 1420, 955, 1150, 1190, 250]
plt.bar(year, kolicina_gvozdja, color='red')
plt.title('Производња сировог гвожђа (у хиљадама тона)')
plt.show()