#include "libasm.h"

int	main(void)
{
	int fd;
	char buf[255];
	char *s;
	char *str = "Svetik privetik";
	char dst1[255] = "Hehe";
	char dst2[255] = "Hehe";
	char src[255] = "kaka pisa";
	printf("_____STRLEN_____\n");
	printf("strlen:%ld\n", strlen(str));
	printf("ft_strlen:%ld\n", ft_strlen(str));
	printf("_____STRCPY_____\n");
	strcpy(dst1, src);
	ft_strcpy(dst2, src);
	printf("strcpy:%s\n", dst1);
	printf("ft_strcpy:%s\n", ft_strcpy(dst2, src));
	printf("_____STRCMP_____\n");
	printf("strcmp:%d\n", strcmp(dst1, dst2));
	printf("ft_strcmp:%d\n", ft_strcmp(dst1, dst2));	
	printf("_____WRITE_____\n");
	write(1, "WRITE_SYS\n", 10);
	ft_write(1, "WRITE_MY\n", 9);
	write(1, str, strlen(str));
	write(1, "\n", 1);
	ft_write(1, str, ft_strlen(str));
	write(1, "\n", 1);
	printf("_____READ_____\n");
	fd = open("test.txt", O_RDONLY);
	read(fd, buf, 35);
	close(fd);
	write(1, buf, 35);
	write(1, "\n", 1);
	fd = open("test.txt", O_RDONLY);
	ft_read(fd, buf, 35);
	ft_write(1, buf, 35);
	write(1, "\n", 1);
	printf("_____STRDUP_____\n");
	s = strdup(str);
	printf("st:%s\n", s);
	free(s);
	s = ft_strdup(str);
	printf("my:%s\n", s);
	return(0);
}
