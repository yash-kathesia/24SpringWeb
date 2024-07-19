package com.util;

public class Validators {

	public static boolean isBlank(String str) {
		if (str.trim().length() == 0 || str == null) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean isAlpha(String str) {

		String alphaRegEx = "[a-zA-Z]+";

		return str.matches(alphaRegEx);
	}

}
