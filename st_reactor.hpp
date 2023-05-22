#ifndef ASSIGNMENT4_ST_REACTOR_HPP
#define ASSIGNMENT4_ST_REACTOR_HPP

typedef void (*handler_t)(int);

void *createReactor();

void stopReactor(void *thisPtr);

void startReactor(void *thisPtr);

void addFd (void * thisPtr,int fd, handler_t handler);

void WaitFor(void * thisPtr);

#endif //ASSIGNMENT4_ST_REACTOR_HPP
