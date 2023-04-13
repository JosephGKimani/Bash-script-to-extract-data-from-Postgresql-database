@echo on
setlocal

set DB_HOST=uk4.poc.fi
set DB_PORT=5432
set DB_NAME=poc
set DB_USER=joseph
set DB_PASSWORD=EIxK01UnA0Z
set CSV_PATH=C:\Users\hp\Desktop\reports
set OUTPUT_FILE=output.csv

set PSQL_COMMAND="psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -c"

for /f "delims=" %%a in ('%PSQL_COMMAND% "%QUERY%"') do (
  echo %%a >> %OUTPUT_FILE%
)

echo "Results saved to %OUTPUT_FILE%"

endlocal
