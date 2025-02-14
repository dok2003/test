#include <iostream>
#include<windows.h>
#define MAX 100000
using namespace std;

int main()
{
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);
#if 0
	int mang[7];
	cout << "Введите 7 чисел: ";
	for (int i = 0; i < 7; i++)
	{
		cin >> mang[i];
	}
	for (int i = 0; i < 7; i++)
	{
		cout << mang[i] << '\t';
	}
#endif задание 1

#if 0
	cout << "Введите количество числа: ";
	int n;
	cin >> n;
	int m[MAX];
	cout << "Введите числа: ";
	for (int i = 0; i < n; i++)
	{
		cin >> m[i];
	}
	int min = m[0];
	for (int i = 1; i < n; i++)
	{
		if (min > m[i])
			min = m[i];
	}
	/*for (int i = 0; i < n; i++)
	{
		cout <<  m[i]<< " ";
	}
	cout << endl;*/
	cout << "Значение самое маленькое: " << min;
#endif задание 5

#if 0
	cout << "Введите количество числа: ";
	int n;
	cin >> n;
	int m[MAX];
	cout << "Введите числа: ";
	for (int i = 0; i < n; i++)
	{
		cin >> m[i];
	}
	int min;
	for (int i = 0; i < n; i++)
	{
		min = m[i];
		for (int j = i + 1; j < n; j++)
		{
			if (min > m[j])
			{
				m[i] = m[j];
				m[j] = min;
				min = m[i];
			}
		}
	}
	for (int i = 0; i < n; i++)
	{
		cout << m[i] << " ";
	}
	cout << endl;
#endif задание 10

#if 0
	cout << "Введите количество строки: ";
	int d;
	cin >> d;
	cout << "Введите количество столбцов: ";
	int c;
	cin >> c;
	int m[d][c];
	cout << "Введите числа: ";
	for (int i = 0; i < d; i++)
	{
		for (int j = 0; j < c; j++)
		{
			cin >> m[i][j];
		}

	}
	int sum[d];
	int s;
	for (int i = 0; i < d; i++)
	{
		s = 0;
		for (int j = 0; j < c; j++)
		{
			s += m[i][j];
		}
		sum[i] = s;

	}
	int max = sum[0];
	for (int i = 1; i < d; i++)
	{
		if (max < sum[i])
		{
			max = sum[i];
		}
	}
	cout << "Cумма элементов которой максимальна: " << max << endl;
	cout << "Номер строки двумерного массива, сумма элементов которой максимальна: ";

	for (int i = 1; i < d; i++)
	{
		if (max == sum[i])
		{
			cout << i + 1 << "\t";
		}

#endif задание 15

#if 0
		cout << "Введите количество строки: ";
		int d;
		cin >> d;
		cout << "Введите количество столбцов: ";
		int c;
		cin >> c;
		long long m[d][c];
		cout << "Введите числа: ";
		for (int i = 0; i < d; i++)
		{
			for (int j = 0; j < c; j++)
			{
				cin >> m[i][j];
			}

		}

		long long s;
		for (int i = 0; i < c; i++)
		{
			s = 0;
			for (int j = 0; j < d; j++)
			{
				s += m[j][i];
			}

			cout << "Cумма элементов " << i + 1 << " столбца: " << s << endl;
		}
#endif задание 20
	return 0;
}