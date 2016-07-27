@echo off

IF "%~2"=="" (
	GOTO RUN_WITH_OUT_ARGS
)
IF EXIST %~2 (
	GOTO RUN_WITH_FILE_ARGS
) ELSE (
	GOTO RUN_WITH_NOT_FILE_ARGS
)

:RUN_WITH_OUT_ARGS
docker run --rm -it -v %CD%:/mount %~1 %~2 %~3 %~4 %~5 %~6 %~7 %~8 %~9
GOTO FINISH

:RUN_WITH_FILE_ARGS
docker run --rm -it -v %CD%:/mount %~1 /mount/%~2 %~3 %~4 %~5 %~6 %~7 %~8 %~9
GOTO FINISH

:RUN_WITH_NOT_FILE_ARGS
docker run --rm -it -v %CD%:/mount %*
GOTO FINISH

:FINISH
