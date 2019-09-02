#panggil data
data<-read.csv("Data.csv")

#Buat tabel confusion matrix
conf<-table(data)

#Namain variabelnya
AA<-conf[1,1]
BA<-conf[2,1]
CA<-conf[3,1]
AB<-conf[1,2]
BB<-conf[2,2]
CB<-conf[3,2]
AC<-conf[1,3]
BC<-conf[2,3]
CC<-conf[3,3]

#Hitung akurasi
acc<-(AA+BB+CC)/(AA+AB+AC+BA+BB+BC+CA+CB+CC)
acc

#Hitung recall
pre_a<-AA/(AA+BA+CA)
pre_b<-(BB)/(BB+AB+CB)
pre_c<-(CC)/(CC+AC+BC)

#Hitung precisi
rec_a<-(AA)/(AA+AB+AC)
rec_b<-(BB)/(BB+BA+BC)
rec_c<-(CC)/(CC+CB+CA)


gabung<-data.frame(Kelas=c("A","B","C"),Recall=c(rec_a,rec_b,rec_c),Presisi=c(pre_a,pre_b,pre_c))
gabung
