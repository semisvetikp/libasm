#ifndef LIBASM_H
# define LIBASM_H

#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dst, const char *src);
int			ft_strcmp(char *s1, char *s2);
size_t		ft_write(int fd, char *str, int n);
size_t		ft_read(int fd, char *buf, int n);
char		*ft_strdup(const char *s);
# endif
