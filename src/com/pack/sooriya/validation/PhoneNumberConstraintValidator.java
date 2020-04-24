package com.pack.sooriya.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneNumberConstraintValidator implements ConstraintValidator<PhoneNumber,String> {

	@Override
	public boolean isValid(String phoneNumber, ConstraintValidatorContext arg1) {

		
		if(phoneNumber!=null)
		{
			if(phoneNumber.length()==10)
			{
				if(phoneNumber.startsWith("9") || phoneNumber.startsWith("8"))
				{
					return true;
				}
				else
					return false;
			}
			return false;
		}
		else
			return true;
	}

	
}
