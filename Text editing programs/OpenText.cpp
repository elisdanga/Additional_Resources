#include "pch.h"
#include <iostream>
#include <locale>
#include <ctime>
using namespace std;
const int MAX_SIZE = 100000; //of the input string
const int MAX_SIZE2 = 100; //of the answers
const int SPACES = 30;
const char REPLACE_WITH = '_';

int findChar(char str[]) //Returns the position of the symbol in the string(begging from 0) that needs to be deleted
{
	if (str[0] == '\0')
		return INT_MIN;

	if (str[0] == '%')
		return 0;

	return 1 + findChar(str + 1);
}

bool isPresent(char str[], int &index) //Checks whether there are still words to be deleted
{
	index = findChar(str);
	if (index < 0)
		return false;

	return true;
}

int getWordLenght(char str[])
{
	if (str[0] == ' ')
		return 0;

	return 1 + getWordLenght(str + 1);
}

void shiftLeft(char str[])
{
	if (str[0] == '\0')
		return;

	str[0] = str[1];

	return shiftLeft(str + 1);
}

int getLenght(char str[])
{
	if (str[0] == '\0')
		return 0;

	return 1 + getLenght(str + 1);
}

void shiftRight(char str[], int size)
{
	if (size == 0)
		return;

	str[size] = str[size - 1];

	return shiftRight(str, size - 1);
}

void putDots(char str[], int cntr)
{
	if (cntr == 0)
		return;
	int size = getLenght(str);
	shiftRight(str, size);
	str[0] = REPLACE_WITH;
	return putDots(str + 1, --cntr);
}

void deleteWord(char str[], int index)
{
	while (isPresent(str, index))
	{
		int cntr = getWordLenght(str + index);
		while (cntr)
		{
			shiftLeft(str + index);
			--cntr;
		}
		putDots((str + index), SPACES);
	}

}

//************************************************************* FILL ANSWERS *********************************************************************************

char* findMarkerFirstLetter(char str[])
{
	if (str[0] == '\0')
		return NULL;

	if (str[0] == '*')
		return str + 1;

	return findMarkerFirstLetter(str + 1);
}

void copyWord(char *firstLetter, char answers[][MAX_SIZE2], int &rows, int cols)
{
	if (*firstLetter == ' ')
		return;

	answers[rows][cols] = *firstLetter;
	++cols;

	return copyWord(firstLetter + 1, answers, rows, cols);
}

void displayAnswersHelper(char *firstLetter, char answers[][MAX_SIZE2], int &rows, int &cols)
{
	*(firstLetter - 1) = '%';
	copyWord(firstLetter, answers, rows, 0);
	++rows;
}

//************************************************************* RANDOM NUMBERS ****************************************************************************

bool isUniqueHelper(int arr[], int size, int number)
{
	if (size <= 0)
		return true;

	if (arr[size - 1] == number)
		return false;

	return isUniqueHelper(arr, size - 1, number);
}

bool isUnique(int arr[], int size)
{
	if (size <= 0)
		return true;

	if (isUniqueHelper(arr, size - 1, arr[size - 1]) == false)
		return false;

	return isUnique(arr, size - 1);
}

void randomNumber(int arr[], int size)
{
	srand((unsigned int)time(NULL));
	do
	{
		int cntr = 0;

		int i = 0;

		do
		{
			arr[i] = rand() % size + 1;
			cntr++;
			i++;
		} while (cntr < size);
	} while (!isUnique(arr, size));

}


//*********************************************************************************************************************************************************

void printAnswers(char answers[][MAX_SIZE2], int arr[], int size)
{
	cout << "\n    ";
	setlocale(LC_ALL, "C");
	for (int k = 0; k <= size; ++k)
	{		
		for (int j = 0; answers[arr[k]][j]; ++j)
		{
			cout << answers[arr[k]][j];
		}
		cout << "    ";		
	}

	cout << endl;
}


void displayAnswers(char str[], int rows = 0, int cols = 0)
{
	char answers[MAX_SIZE2][MAX_SIZE2] = { {"%"}, {"%"} };

	char *firstLetter = findMarkerFirstLetter(str);

	while (firstLetter != NULL)
	{
		displayAnswersHelper(firstLetter, answers, rows, cols);
		firstLetter = findMarkerFirstLetter(str);
	}

	int SIZE = rows;
	if (SIZE == 0)
	{
		cout << "\n\n ATTENTION: No * found!" << endl << endl;
		return;
	}
	int arr[MAX_SIZE2] = { 0 };

	randomNumber(arr, SIZE);

	printAnswers(answers, arr, SIZE);
}


//********************************************************************************************************************************************************


void howTo()
{
	cout << "How To Use:\n	1. Create a text file on your desktop.\n	2. Paste the text you want to format with the program.\n	3. Format the text so that it is one whole paragraph.\n	4. Mark the words which you want to remove with the symbol : \" * \".\n	5. Open the program and paste the text." << endl << endl;
}

int main()
{
	howTo();
	char text[MAX_SIZE] = "";

	cout << "My Text:    ";
	cin.getline(text, MAX_SIZE);

	int index = -2;


	cout << "\n\n    Result:" << endl;
	setlocale(LC_ALL, "german");
	cout << "\n  Ergänzen Sie die passenden Wörter!" << endl;
	
	//***************************
	displayAnswers(text);
	//***************************

	deleteWord(text, index);

	cout << "\n     " << text << endl << endl << endl;



	system("pause");

	return 0;
}