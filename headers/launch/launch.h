#ifndef LAUNCH_H
#define LAUNCH_H
#include<stdio.h>
bool launch_win()
{
    bool status;
    int run;
    run=1;
    if(run>=20){
        status=true;
    }else{
        status=false;
    }
    return status;
}
bool launch_linux()
{
    bool status;
    int run;
    run=1;
    if(run>=20){
        status=true;
    }else{
        status=false;
    }
    return status;
}
bool launch_android()
{
    bool status;
    int run;
    run=1;
    if(run>=20){
        status=true;
    }else{
        status=false;
    }
    return status;
}
#endif // LAUNCH_H
