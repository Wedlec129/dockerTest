#какие образы используем
FROM gcc                                                

#какую команду запускаем
RUN git clone https://github.com/Wedlec129/snake.git

#устанавливаем директорию о умолчанию (старт)
WORKDIR /snake


#запускаем команду  с библиотекой
RUN gcc snake.c -o /a.out -lncurses

#запуск проекта
CMD [ "/a.out" ]


#    docker build -t snake .
#    docker run -it --rm snake