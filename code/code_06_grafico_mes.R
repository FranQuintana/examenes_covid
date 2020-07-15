df_mes<-df_dia %>% group_by(mes) %>% 
  summarise(media_mes=mean(pcr))


gg_media_mes<-df_mes %>% ggplot()
gg_media_mes<-gg_media_mes %+% aes(x=mes, y=media_mes)
gg_media_mes<-gg_media_mes %+% geom_line() 
