-- Add age columns
ALTER TABLE customers
ADD COLUMN IF NOT EXISTS age INT;

-- Alter gender column type to fit the new values
ALTER TABLE customers
ALTER COLUMN gender TYPE VARCHAR(10); 

-- Calculate age from Date of Birth and store it
UPDATE customers
SET 
  age = CASE 
          WHEN date_of_birth IS NOT NULL THEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM date_of_birth) - 
                                            CASE WHEN EXTRACT(MONTH FROM CURRENT_DATE) < EXTRACT(MONTH FROM date_of_birth) OR 
                                                          (EXTRACT(MONTH FROM CURRENT_DATE) = EXTRACT(MONTH FROM date_of_birth) AND EXTRACT(DAY FROM CURRENT_DATE) < EXTRACT(DAY FROM date_of_birth)) 
                                                  THEN 1 ELSE 0 END
          ELSE NULL
        END;

-- Handle null values and capitalize job titles
UPDATE customers
SET job_title = COALESCE(INITCAP(job_title), 'Unknown');

-- Standardize gender values
UPDATE customers
SET gender = CASE
                WHEN gender = 'M' THEN 'Male'
                WHEN gender = 'F' THEN 'Female'
                WHEN gender = 'D' THEN 'Diverse'
                ELSE 'Unknown'
              END;

-- Handle null values and standardize for products table
UPDATE products
SET color = COALESCE(INITCAP(color), 'Unknown'),
    sizes = COALESCE(UPPER(sizes), 'Unknown');

-- Handle null values and standardize for transaction table
UPDATE transactions
SET color = COALESCE(INITCAP(color), 'Unknown'),
    size = COALESCE(UPPER(size), 'Unknown');

-- Remove unecessary columns from products table
ALTER TABLE products
DROP COLUMN IF EXISTS description_pt,
DROP COLUMN IF EXISTS description_de,
DROP COLUMN IF EXISTS description_fr,
DROP COLUMN IF EXISTS description_es,
DROP COLUMN IF EXISTS description_zh;