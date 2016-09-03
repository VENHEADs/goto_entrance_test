x<-read.csv2("train_likes") #считываем таблицу в переменную х
nmb<-rnorm(111251,1,0) # создаем столбец со значениями для подсчета количества лайков
x$love<-nmb # добавляем столбец в таблицу
x111<-aggregate(. ~ channel, data=x, FUN=sum) # получаем таблицу с количеством уникальных
каналов и числом лайков у каждого из 1049 каналов
avg<-mean(x111$love) # среднее число лайков на канал = 106.05
x111<-aggregate(. ~ item_id, data=x, FUN=sum) # таблица с уникальными фильмами 23891 штука
sum(x111$love>5) # фильмы более чем с 5 лайками (3691 фильм)