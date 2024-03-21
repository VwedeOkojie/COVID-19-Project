/*

Cleaning Data in SQL Queries

*/


SELECT *
FROM NashvilleHousing

--------------------------------------------------------------------------------------------------------------------------

-- Standardize Date Format


SELECT SaleDate, CONVERT(Date, SaleDate)
FROM NashvilleHousing

UPDATE NashVilleHousing
SET SaleDate = CONVERT(Date, SaleDate)



-- If it doesn't Update properly

ALTER TABLE NashvilleHousing
ADD SaleDateConverted DATE;

UPDATE NashVilleHousing
SET SaleDateConverted = CONVERT(Date, SaleDate)


 --------------------------------------------------------------------------------------------------------------------------
 
 -- Populate Property Address data

 SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM NashvilleHousing a
JOIN NashvilleHousing b
ON a.ParcelID = b.ParcelID
AND a.[UniqueID] <> B.[UniqueID]
WHERE a.PropertyAddress IS NULL

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM NashvilleHousing a
JOIN NashvilleHousing b
ON a.ParcelID = b.ParcelID
AND a.[UniqueID] <> B.[UniqueID]



 --------------------------------------------------------------------------------------------------------------------------

-- Breaking out Address into Individual Columns (Address, City, State)

SELECT PropertyAddress
FROM NashvilleHousing

SELECT 
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 ) as Address,
SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1 , LEN(PropertyAddress)) as Address

FROM NashVilleHousing

ALTER TABLE NashvilleHousing
ADD PropertySplitAddress NVARCHAR (255);

UPDATE NashVilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 )

ALTER TABLE NashvilleHousing
ADD PropertySplitCity NVARCHAR (255);

UPDATE NashVilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1 , LEN(PropertyAddress))



SELECT OwnerAddress
FROM NashvilleHousing

SELECT
PARSENAME(REPLACE(OwnerAddress, ',','.'), 3),
PARSENAME(REPLACE(OwnerAddress, ',','.'), 2),
PARSENAME(REPLACE(OwnerAddress, ',','.'), 1)
FROM NashvilleHousing

ALTER TABLE NashvilleHousing
ADD OwnerSplitAddress NVARCHAR (255);

UPDATE NashVilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',','.'), 3)

ALTER TABLE NashvilleHousing
ADD OwnerSplitCity NVARCHAR (255);

UPDATE NashVilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',','.'), 2)

ALTER TABLE NashvilleHousing
ADD OwnerSplitState NVARCHAR (255);

UPDATE NashVilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',','.'), 1)




--------------------------------------------------------------------------------------------------------------------------


-- Change Y and N to Yes and No in "Sold as Vacant" field

SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM NashvilleHousing
GROUP BY SoldAsVacant
ORDER BY 2


SELECT SoldAsVacant,
CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
 WHEN SoldAsVacant = 'N' THEN 'No'
 ELSE SoldAsVacant
 END
FROM NashvilleHousing

UPDATE NashvilleHousing
SET SoldAsVacant = CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
 WHEN SoldAsVacant = 'N' THEN 'No'
 ELSE SoldAsVacant
 END




-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicates

WITH RowNumCTE AS(
SELECT *,
ROW_NUMBER() OVER (
PARTITION BY ParcelID, PropertyAddress, SalePrice, SaleDate, LegalReference
ORDER BY UniqueID) Row_Num
FROM NashvilleHousing)

--DELETE
SELECT *
FROM RowNumCTE
WHERE Row_Num > 1
--ORDER BY PropertyAddress


---------------------------------------------------------------------------------------------------------

-- Delete Unused Columns


ALTER TABLE NashvilleHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate


