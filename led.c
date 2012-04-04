#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <time.h>

#include "io.h"

int main() {

    S_GPIO_LINE s_line9;

    int sw = 0;

    load_gpio_line(&s_line9, PB0, OUT);  
    
    while(1)
    {
        set_gpio_line(&s_line9, !sw);    
        sleep(1);
    }

    return 0;
}


