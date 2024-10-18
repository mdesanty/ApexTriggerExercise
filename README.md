# Remove phone numbers that are duplicated across accounts

When an account is created or updated, check for duplicated phone numbers across all accounts.
If there are duplicates, the newest account will keep the phone number. Set the phone number on the other accounts to all zeros

# Account delete

When an account's status is set to deleted, delete all associated contacts EXCEPT those contacts with a mailing state of Massachusetts.
The Description field of the MA contacts will be prepended with the string "*** ARCHIVED **** <date>" The date will be formated as: MM.DD.YYYY

