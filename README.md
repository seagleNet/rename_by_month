# Rename By Month

Simple shell script to rename files or directories by month.

The script checks items in one given location for a simple pattern (3-letter month abbreviation) to match the month and renames the items with the month's number as a prefix.

## Usage

```bash
./rename_by_month.sh /path/to/dir
```

## Example

Before:

```none
$ ls -1
April.zip
August.zip
December.zip
February.zip
January.zip
July.zip
June.zip
March.zip
May.zip
November.zip
October.zip
September.zip
```

After:

```none
$ ls -1
01_January.zip
02_February.zip
03_March.zip
04_April.zip
05_May.zip
06_June.zip
07_July.zip
08_August.zip
09_September.zip
10_October.zip
11_November.zip
12_December.zip
```
