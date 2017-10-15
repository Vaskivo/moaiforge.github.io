@echo off
REM update samples from dev
where pito
if ERRORLEVEL 1 (
	echo "Could not find pito, ensure your moai dev env is configured"
	exit /b
)
pushd %~dp0\..
if not exist samples mkdir samples
cd samples
if not exist 2.0 mkdir 2.0
cd 2.0

call pito build-sample-browser

copy /y %~dp0\build-samples-assets\style.css sample-browser\player\css\style.css

popd
