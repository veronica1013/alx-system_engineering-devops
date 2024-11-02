#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - Function that runs an infinite loop with a 1-second sleep.
 * Return: Always 0.
 */
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - Creates 5 zombie processes.
 * Return: Always 0.
 */
int main(void)
{
    pid_t pid;
    int i;

    for (i = 0; i < 5; i++)
    {
        pid = fork();
        if (pid == -1)
        {
            perror("fork");
            return (1);
        }
        if (pid == 0)
        {
            /* Child process exits immediately to become a zombie */
            exit(0);
        }
        else
        {
            /* Parent process prints zombie process PID */
            printf("Zombie process created, PID: %d\n", pid);
        }
    }

    infinite_while(); /* Keep the parent process running */
    return (0);
}
