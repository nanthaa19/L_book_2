package com.prices;

import java.util.HashMap;

public abstract class Prizes
{
	int count;
	
	abstract String getPrizeName();
	
	abstract short totalNumbersOfPrizes(byte total);
	
	abstract HashMap<Integer, String> priceList();
}
